import { useEffect, useMemo, useState } from 'react';
import apiClient from '../services/apiClient';
import Card from '../components/common/Card';
import Badge from '../components/common/Badge';
import RevenueChart from '../components/charts/RevenueChart';
import {
  AreaTrendChart,
  ColumnChart,
  HBarList,
  DonutChart,
  GaugeChart,
} from '../components/charts/DashboardCharts'; // NEW

export default function DashboardPage() {
  const [pnl, setPnl] = useState(null);
  const [health, setHealth] = useState(null);
  const [alerts, setAlerts] = useState([]);
  const [lowStock, setLowStock] = useState([]);
  const [revenueData, setRevenueData] = useState([]);
  const [dailyRows, setDailyRows] = useState([]); // NEW
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadDashboardData();
  }, []);

  async function loadDashboardData() {
    try {
      const today = new Date();
      const fromDate = new Date(today);
      fromDate.setMonth(fromDate.getMonth() - 5);

      const [pnlRes, alertsRes, stockRes, rangeRes] = await Promise.all([
        apiClient.get('/financial-dashboard/pnl/today'),
        apiClient.get('/fraud/alerts?status=open'),
        apiClient.get('/stock/low'),
        apiClient.get('/financial-dashboard/pnl-range', {
          params: {
            fromDate: fromDate.toISOString().split('T')[0],
            toDate: today.toISOString().split('T')[0],
          },
        }),
      ]);

      setPnl(pnlRes.data.data);
      setAlerts(alertsRes.data.data);
      setLowStock(stockRes.data.data);
      setRevenueData(aggregateByMonth(rangeRes.data.data));
      setDailyRows(rangeRes.data.data); // NEW

      try {
        const healthRes = await apiClient.get('/notifications/health-score');
        setHealth(healthRes.data.data);
      } catch (healthErr) {
        console.warn('Health score endpoint not available yet:', healthErr.message);
      }
    } catch (err) {
      console.error('Failed to load dashboard data:', err);
    } finally {
      setLoading(false);
    }
  }

  function aggregateByMonth(dailyRows) {
    const monthMap = {};
    const monthOrder = [];

    dailyRows.forEach((row) => {
      const d = new Date(row.date);
      const key = d.toLocaleString('en-US', { month: 'short', year: '2-digit' });
      if (!monthMap[key]) {
        monthMap[key] = 0;
        monthOrder.push(key);
      }
      monthMap[key] += row.revenue;
    });

    return monthOrder.map((key) => ({
      month: key,
      actual: Math.round(monthMap[key]),
    }));
  }

  // NEW: derived chart data (display only, no API calls)
  const last30Days = useMemo(() => {
    return [...dailyRows]
      .sort((a, b) => new Date(a.date) - new Date(b.date))
      .slice(-30)
      .map((r) => ({
        label: new Date(r.date).toLocaleDateString('en-US', { month: 'short', day: 'numeric' }),
        value: Number(r.revenue) || 0,
      }));
  }, [dailyRows]);

  const weekdayData = useMemo(() => {
    const names = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    const totals = new Array(7).fill(0);
    dailyRows.forEach((r) => {
      totals[new Date(r.date).getDay()] += Number(r.revenue) || 0;
    });
    return names.map((label, i) => ({ label, value: Math.round(totals[i]) }));
  }, [dailyRows]);

  const monthChange = useMemo(() => {
    if (revenueData.length < 2) return null;
    const cur = revenueData[revenueData.length - 1].actual;
    const prev = revenueData[revenueData.length - 2].actual;
    if (!prev) return null;
    return ((cur - prev) / prev) * 100;
  }, [revenueData]);

  const stockBars = useMemo(
    () =>
      [...lowStock]
        .sort((a, b) => Number(a.quantity) - Number(b.quantity))
        .slice(0, 6)
        .map((s) => ({
          label: s.material_name,
          value: Number(s.quantity) || 0,
          display: `${s.quantity}${s.unit || ''}`,
          color: Number(s.quantity) <= 0 ? '#dc2626' : '#f59e0b',
        })),
    [lowStock]
  );

  if (loading) {
    return (
      <div className="p-6 flex items-center justify-center h-[70vh]">
        <div className="flex flex-col items-center gap-3">
          <div className="w-8 h-8 border-2 border-gray-200 border-t-gramsure-navy rounded-full animate-spin" />
          <p className="text-sm text-gray-400">Loading dashboard...</p>
        </div>
      </div>
    );
  }

  const pendingCount = alerts.length + lowStock.length;

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between">
          <div>
            <h1 className="text-2xl font-bold text-white">Owner Dashboard</h1>
            <p className="text-sm text-white/50 mt-1">
              {new Date().toLocaleDateString('en-US', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' })}
            </p>
          </div>
          {pendingCount > 0 && (
            <div className="hidden sm:flex items-center gap-2 bg-white/10 backdrop-blur-sm px-4 py-2 rounded-xl border border-white/10">
              <span className="w-2 h-2 rounded-full bg-gramsure-gold animate-pulse" />
              <span className="text-sm text-white/80">{pendingCount} pending action{pendingCount !== 1 ? 's' : ''}</span>
            </div>
          )}
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {/* KPI cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          <Card title="Business Health" value={health ? `${health.overallScore}/100` : '—'} subtitle={health?.label} tone="good" />
          <Card title="Today's Net Profit" value={pnl ? `Rs. ${pnl.netProfit.toFixed(0)}` : '—'} />
          <Card title="Fraud Flags" value={`${alerts.length} Active`} tone={alerts.length > 0 ? 'critical' : 'good'} />
          <Card title="Low Stock Items" value={lowStock.length} tone={lowStock.length > 0 ? 'warn' : 'good'} />
        </div>

        {/* Row 1: monthly revenue + health gauge */}
        <div className="grid grid-cols-1 lg:grid-cols-5 gap-6">
          <div className="lg:col-span-3">
            <RevenueChart data={revenueData} />
          </div>

          <Panel title="Business Health Score" className="lg:col-span-2">
            <div className="py-4">
              <GaugeChart value={health?.overallScore} label={health?.label} />
            </div>
          </Panel>
        </div>

        {/* Row 2: daily trend + pending breakdown */}
        <div className="grid grid-cols-1 lg:grid-cols-5 gap-6">
          <Panel
            title="Daily Revenue (Last 30 Days)"
            className="lg:col-span-3"
            right={
              monthChange !== null && (
                <span
                  className={`text-xs font-semibold px-2 py-0.5 rounded-full ${
                    monthChange >= 0 ? 'bg-green-50 text-green-600' : 'bg-red-50 text-red-600'
                  }`}
                >
                  {monthChange >= 0 ? '▲' : '▼'} {Math.abs(monthChange).toFixed(1)}% vs last month
                </span>
              )
            }
          >
            <div className="pb-6">
              <AreaTrendChart data={last30Days} id="daily" />
            </div>
          </Panel>

          <Panel title="Attention Breakdown" className="lg:col-span-2">
            <div className="py-3">
              {pendingCount === 0 ? (
                <p className="text-sm text-gray-400 text-center py-10">Nothing needs attention 🎉</p>
              ) : (
                <DonutChart
                  centerValue={pendingCount}
                  centerLabel="pending"
                  segments={[
                    { label: 'Fraud alerts', value: alerts.length, color: '#dc2626' },
                    { label: 'Low stock', value: lowStock.length, color: '#f59e0b' },
                  ]}
                />
              )}
            </div>
          </Panel>
        </div>

        {/* Row 3: weekday + low stock + pending list */}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          <Panel title="Revenue by Weekday">
            <ColumnChart data={weekdayData} />
          </Panel>

          <Panel title="Lowest Stock Items">
            <HBarList items={stockBars} emptyText="All stock levels are healthy" />
          </Panel>

          <Panel
            title="Pending Actions"
            right={
              pendingCount > 0 && (
                <span className="text-xs font-semibold text-gramsure-navy bg-gramsure-gold/20 px-2 py-0.5 rounded-full">
                  {pendingCount}
                </span>
              )
            }
          >
            {pendingCount === 0 ? (
              <div className="flex flex-col items-center justify-center py-10 text-center">
                <div className="w-10 h-10 rounded-full bg-green-50 flex items-center justify-center mb-3">
                  <span className="text-green-600 text-lg">✓</span>
                </div>
                <p className="text-sm text-gray-400">No pending actions. All clear!</p>
              </div>
            ) : (
              <ul className="space-y-1 max-h-[260px] overflow-y-auto pr-1">
                {alerts.map((a) => (
                  <li
                    key={a.id}
                    className="flex justify-between items-center gap-3 text-sm py-2.5 border-b border-gray-50 last:border-0"
                  >
                    <span className="text-gray-700">{a.details}</span>
                    <Badge tone="critical">Fraud</Badge>
                  </li>
                ))}
                {lowStock.map((s) => (
                  <li
                    key={s.id}
                    className="flex justify-between items-center gap-3 text-sm py-2.5 border-b border-gray-50 last:border-0"
                  >
                    <span className="text-gray-700">{s.material_name} — {s.quantity}{s.unit} remaining</span>
                    <Badge tone="warn">Reorder</Badge>
                  </li>
                ))}
              </ul>
            )}
          </Panel>
        </div>
      </div>
    </div>
  );
}

// NEW: small presentational wrapper for consistent card styling
function Panel({ title, right, className = '', children }) {
  return (
    <div className={`bg-white rounded-2xl shadow-sm border border-gray-100 p-5 ${className}`}>
      <div className="flex items-center justify-between mb-4">
        <h3 className="text-sm font-semibold text-gray-800">{title}</h3>
        {right}
      </div>
      {children}
    </div>
  );
}