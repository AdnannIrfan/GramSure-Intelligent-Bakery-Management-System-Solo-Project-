import { useEffect, useMemo, useState } from 'react';
import apiClient from '../../services/apiClient';
import Card from '../../components/common/Card';
import {
  AreaTrendChart,
  ColumnChart,
  HBarList,
  DonutChart,
} from '../../components/charts/DashboardCharts'; // NEW

export default function SalesPage() {
  const [sales, setSales] = useState([]);
  const [loading, setLoading] = useState(true);

  // NEW: UI-only state for table filtering
  const [search, setSearch] = useState('');
  const [paymentFilter, setPaymentFilter] = useState('all');
  const [visibleCount, setVisibleCount] = useState(25);

  useEffect(() => {
    loadSales();
  }, []);

  async function loadSales() {
    setLoading(true);
    try {
      const { data } = await apiClient.get('/sales');
      setSales(data.data);
    } catch (err) {
      console.error('Failed to load sales:', err);
    } finally {
      setLoading(false);
    }
  }

  const totalRevenue = sales.reduce((sum, s) => sum + parseFloat(s.amount), 0);
  const totalUnits = sales.reduce((sum, s) => sum + Number(s.units_sold || 0), 0);

  const paymentTone = (type) => {
    if (type === 'cash') return 'bg-[#16a34a]/10 text-[#16a34a]';
    if (type === 'card') return 'bg-gramsure-navy/10 text-gramsure-navy';
    return 'bg-gray-100 text-gray-600';
  };

  /* ---------- NEW: derived chart data (display only) ---------- */

  // One row per day, sorted oldest -> newest
  const dailyTotals = useMemo(() => {
    const map = {};
    sales.forEach((s) => {
      const d = new Date(s.created_at);
      if (Number.isNaN(d.getTime())) return;
      const key = `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`;
      if (!map[key]) map[key] = { key, date: d, revenue: 0, units: 0, count: 0 };
      map[key].revenue += parseFloat(s.amount) || 0;
      map[key].units += Number(s.units_sold || 0);
      map[key].count += 1;
    });
    return Object.values(map).sort((a, b) => a.key.localeCompare(b.key));
  }, [sales]);

  const trendData = useMemo(
    () =>
      dailyTotals.slice(-30).map((d) => ({
        label: d.date.toLocaleDateString('en-US', { month: 'short', day: 'numeric' }),
        value: Math.round(d.revenue),
      })),
    [dailyTotals]
  );

  // Last 7 days vs the 7 days before
  const revenueTrend = useMemo(() => {
    if (dailyTotals.length < 2) return undefined;
    const last = dailyTotals.slice(-7).reduce((s, d) => s + d.revenue, 0);
    const prev = dailyTotals.slice(-14, -7).reduce((s, d) => s + d.revenue, 0);
    if (!prev) return undefined;
    return ((last - prev) / prev) * 100;
  }, [dailyTotals]);

  const revenueSpark = useMemo(() => dailyTotals.slice(-14).map((d) => d.revenue), [dailyTotals]);
  const unitsSpark = useMemo(() => dailyTotals.slice(-14).map((d) => d.units), [dailyTotals]);
  const countSpark = useMemo(() => dailyTotals.slice(-14).map((d) => d.count), [dailyTotals]);

  const topProducts = useMemo(() => {
    const map = {};
    sales.forEach((s) => {
      const name = s.product_name || 'Unknown';
      map[name] = (map[name] || 0) + (parseFloat(s.amount) || 0);
    });
    return Object.entries(map)
      .sort((a, b) => b[1] - a[1])
      .slice(0, 6)
      .map(([label, value], i) => ({
        label,
        value,
        display: `Rs. ${Math.round(value).toLocaleString()}`,
        color: i === 0 ? '#f59e0b' : '#1e293b',
      }));
  }, [sales]);

  const paymentSegments = useMemo(() => {
    const colors = { cash: '#16a34a', card: '#1e293b' };
    const map = {};
    sales.forEach((s) => {
      const t = s.payment_type || 'other';
      map[t] = (map[t] || 0) + 1;
    });
    return Object.entries(map).map(([type, value]) => ({
      label: type.charAt(0).toUpperCase() + type.slice(1),
      value,
      color: colors[type] || '#9ca3af',
    }));
  }, [sales]);

  const weekdayData = useMemo(() => {
    const names = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    const totals = new Array(7).fill(0);
    sales.forEach((s) => {
      const d = new Date(s.created_at);
      if (!Number.isNaN(d.getTime())) totals[d.getDay()] += parseFloat(s.amount) || 0;
    });
    return names.map((label, i) => ({ label, value: Math.round(totals[i]) }));
  }, [sales]);

  const shiftBars = useMemo(() => {
    const map = {};
    sales.forEach((s) => {
      const shift = s.shift || 'unknown';
      map[shift] = (map[shift] || 0) + (parseFloat(s.amount) || 0);
    });
    const palette = ['#f59e0b', '#1e293b', '#16a34a', '#9ca3af'];
    return Object.entries(map)
      .sort((a, b) => b[1] - a[1])
      .map(([shift, value], i) => ({
        label: shift.charAt(0).toUpperCase() + shift.slice(1),
        value,
        display: `Rs. ${Math.round(value).toLocaleString()}`,
        color: palette[i % palette.length],
      }));
  }, [sales]);

  const avgSale = sales.length ? totalRevenue / sales.length : 0;

  // NEW: filtered table rows
  const filteredSales = useMemo(() => {
    const q = search.trim().toLowerCase();
    return sales.filter((s) => {
      const matchesSearch = !q || String(s.product_name || '').toLowerCase().includes(q);
      const matchesPayment = paymentFilter === 'all' || s.payment_type === paymentFilter;
      return matchesSearch && matchesPayment;
    });
  }, [sales, search, paymentFilter]);

  const paymentTypes = useMemo(
    () => [...new Set(sales.map((s) => s.payment_type).filter(Boolean))],
    [sales]
  );

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between">
          <div>
            <h1 className="text-2xl font-bold text-white">Sales & Revenue</h1>
            <p className="text-sm text-white/50 mt-1">{sales.length} transaction{sales.length !== 1 ? 's' : ''} recorded</p>
          </div>
          <div className="text-right bg-white/10 backdrop-blur-sm px-5 py-2.5 rounded-xl border border-white/10">
            <p className="text-[11px] text-white/50 uppercase tracking-wide">Total Revenue</p>
            <p className="text-lg font-bold text-gramsure-gold">Rs. {totalRevenue.toFixed(0)}</p>
          </div>
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {/* KPI cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          <Card
            title="Total Revenue"
            value={`Rs. ${totalRevenue.toFixed(0)}`}
            icon="money"
            trend={revenueTrend}
            spark={revenueSpark}
            subtitle={revenueTrend !== undefined ? 'last 7 days vs previous 7' : undefined}
          />
          <Card title="Units Sold" value={totalUnits} icon="box" spark={unitsSpark} />
          <Card title="Transactions" value={sales.length} icon="cart" spark={countSpark} />
          <Card title="Average Sale" value={`Rs. ${avgSale.toFixed(0)}`} icon="chart" subtitle="per transaction" />
        </div>

        {/* Charts row 1 */}
        <div className="grid grid-cols-1 lg:grid-cols-5 gap-6">
          <Panel title="Daily Revenue (Last 30 Days)" className="lg:col-span-3">
            <div className="pb-6">
              <AreaTrendChart data={trendData} id="sales-daily" />
            </div>
          </Panel>

          <Panel title="Payment Methods" className="lg:col-span-2">
            <div className="py-3">
              {sales.length === 0 ? (
                <p className="text-sm text-gray-400 text-center py-10">No sales yet</p>
              ) : (
                <DonutChart centerValue={sales.length} centerLabel="sales" segments={paymentSegments} />
              )}
            </div>
          </Panel>
        </div>

        {/* Charts row 2 */}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          <Panel title="Top Products by Revenue">
            <HBarList items={topProducts} emptyText="No sales yet" />
          </Panel>

          <Panel title="Revenue by Weekday">
            <ColumnChart data={weekdayData} />
          </Panel>

          <Panel title="Revenue by Shift">
            <HBarList items={shiftBars} emptyText="No sales yet" />
          </Panel>
        </div>

        {/* Table */}
        <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
          <div className="p-4 border-b border-gray-100 flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
            <h3 className="text-sm font-semibold text-gray-800">
              All Transactions
              <span className="ml-2 text-xs font-normal text-gray-400">
                {filteredSales.length} shown
              </span>
            </h3>
            <div className="flex items-center gap-2">
              <input
                type="text"
                value={search}
                onChange={(e) => {
                  setSearch(e.target.value);
                  setVisibleCount(25);
                }}
                placeholder="Search product..."
                className="w-full sm:w-52 px-3 py-2 text-sm bg-gray-50 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent"
              />
              <select
                value={paymentFilter}
                onChange={(e) => {
                  setPaymentFilter(e.target.value);
                  setVisibleCount(25);
                }}
                className="px-3 py-2 text-sm bg-gray-50 border border-gray-200 rounded-lg capitalize focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent"
              >
                <option value="all">All payments</option>
                {paymentTypes.map((t) => (
                  <option key={t} value={t} className="capitalize">
                    {t}
                  </option>
                ))}
              </select>
            </div>
          </div>

          {loading ? (
            <div className="p-6 space-y-3">
              {[...Array(5)].map((_, i) => (
                <div key={i} className="h-10 bg-gray-100 rounded-lg animate-pulse" />
              ))}
            </div>
          ) : (
            <div className="overflow-x-auto">
              <table className="w-full text-sm">
                <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                  <tr>
                    <th className="text-left px-5 py-3 font-semibold">Product</th>
                    <th className="text-left px-5 py-3 font-semibold">Units</th>
                    <th className="text-left px-5 py-3 font-semibold">Amount</th>
                    <th className="text-left px-5 py-3 font-semibold">Payment</th>
                    <th className="text-left px-5 py-3 font-semibold">Shift</th>
                    <th className="text-left px-5 py-3 font-semibold">Date</th>
                  </tr>
                </thead>
                <tbody>
                  {filteredSales.slice(0, visibleCount).map((s) => (
                    <tr key={s.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                      <td className="px-5 py-3 font-medium text-gray-800">{s.product_name}</td>
                      <td className="px-5 py-3 text-gray-600">{s.units_sold}</td>
                      <td className="px-5 py-3 font-semibold text-gray-800">Rs. {s.amount}</td>
                      <td className="px-5 py-3">
                        <span className={`inline-block px-2.5 py-1 rounded-full text-xs font-semibold capitalize ${paymentTone(s.payment_type)}`}>
                          {s.payment_type}
                        </span>
                      </td>
                      <td className="px-5 py-3 text-gray-600 capitalize">{s.shift}</td>
                      <td className="px-5 py-3 text-gray-400">{new Date(s.created_at).toLocaleDateString()}</td>
                    </tr>
                  ))}
                  {filteredSales.length === 0 && (
                    <tr>
                      <td colSpan={6} className="px-5 py-12 text-center text-gray-400">
                        {sales.length === 0 ? 'No sales recorded yet.' : 'No sales match your search.'}
                      </td>
                    </tr>
                  )}
                </tbody>
              </table>
            </div>
          )}

          {!loading && filteredSales.length > visibleCount && (
            <div className="p-4 border-t border-gray-100 text-center">
              <button
                onClick={() => setVisibleCount((c) => c + 25)}
                className="text-sm font-medium text-gramsure-navy hover:bg-gray-100 px-4 py-2 rounded-lg transition-colors"
              >
                Show more ({filteredSales.length - visibleCount} remaining)
              </button>
            </div>
          )}
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