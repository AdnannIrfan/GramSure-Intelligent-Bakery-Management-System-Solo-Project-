import { useEffect, useMemo, useState } from 'react';
import apiClient from '../../services/apiClient';
import Card from '../../components/common/Card'; // NEW
import { DonutChart, HBarList, GaugeChart } from '../../components/charts/DashboardCharts'; // NEW

export default function FinancialDashboardPage() {
  const [pnl, setPnl] = useState(null);
  const [margins, setMargins] = useState([]);
  const [loading, setLoading] = useState(true);

  // NEW: UI-only state for table search
  const [search, setSearch] = useState('');

  useEffect(() => {
    loadData();
  }, []);

  async function loadData() {
    setLoading(true);
    try {
      const [pnlRes, marginsRes] = await Promise.all([
        apiClient.get('/financial-dashboard/pnl/today'),
        apiClient.get('/financial-dashboard/product-margins'),
      ]);
      setPnl(pnlRes.data.data);
      setMargins(marginsRes.data.data);
    } catch (err) {
      console.error('Failed to load financial dashboard:', err);
    } finally {
      setLoading(false);
    }
  }

  /* ---------- NEW: derived chart data (display only) ---------- */

  const fmtRs = (n) => `Rs. ${Math.round(Number(n) || 0).toLocaleString()}`;

  const netMargin = useMemo(() => {
    if (!pnl || !Number(pnl.revenue)) return null;
    return (Number(pnl.netProfit) / Number(pnl.revenue)) * 100;
  }, [pnl]);

  const totalCosts = pnl ? Number(pnl.cogs || 0) + Number(pnl.expenses || 0) + Number(pnl.salaries || 0) : 0;

  const costSegments = useMemo(() => {
    if (!pnl) return [];
    return [
      { label: 'COGS', value: Math.round(Number(pnl.cogs) || 0), color: '#1e293b' },
      { label: 'Expenses', value: Math.round(Number(pnl.expenses) || 0), color: '#f59e0b' },
      { label: 'Salaries', value: Math.round(Number(pnl.salaries) || 0), color: '#64748b' },
    ];
  }, [pnl]);

  // Where today's revenue goes: bar per line item, scaled to revenue
  const flowBars = useMemo(() => {
    if (!pnl) return [];
    const profit = Number(pnl.netProfit) || 0;
    return [
      { label: 'Revenue', value: Number(pnl.revenue) || 0, display: fmtRs(pnl.revenue), color: '#16a34a' },
      { label: 'COGS', value: Number(pnl.cogs) || 0, display: fmtRs(pnl.cogs), color: '#1e293b' },
      { label: 'Expenses', value: Number(pnl.expenses) || 0, display: fmtRs(pnl.expenses), color: '#f59e0b' },
      { label: 'Salaries', value: Number(pnl.salaries) || 0, display: fmtRs(pnl.salaries), color: '#64748b' },
      {
        label: profit >= 0 ? 'Net Profit' : 'Net Loss',
        value: Math.abs(profit),
        display: `${profit < 0 ? '-' : ''}${fmtRs(Math.abs(profit))}`,
        color: profit >= 0 ? '#f59e0b' : '#dc2626',
      },
    ];
  }, [pnl]);

  const topMarginProducts = useMemo(
    () =>
      [...margins]
        .sort((a, b) => Number(b.margin) - Number(a.margin))
        .slice(0, 6)
        .map((m, i) => ({
          label: m.productName,
          value: Math.abs(Number(m.margin) || 0),
          display: `${Number(m.margin) < 0 ? '-' : ''}${fmtRs(Math.abs(Number(m.margin) || 0))}`,
          color: Number(m.margin) < 0 ? '#dc2626' : i === 0 ? '#f59e0b' : '#1e293b',
        })),
    [margins]
  );

  const marginPercentBars = useMemo(
    () =>
      [...margins]
        .sort((a, b) => Number(b.marginPercent) - Number(a.marginPercent))
        .slice(0, 6)
        .map((m) => ({
          label: m.productName,
          value: Math.abs(Number(m.marginPercent) || 0),
          display: `${(Number(m.marginPercent) || 0).toFixed(1)}%`,
          color: Number(m.marginPercent) < 0 ? '#dc2626' : '#16a34a',
        })),
    [margins]
  );

  const lossMakers = useMemo(() => margins.filter((m) => Number(m.marginPercent) < 0).length, [margins]);

  const totalProductRevenue = useMemo(
    () => margins.reduce((sum, m) => sum + (Number(m.revenue) || 0), 0),
    [margins]
  );

  const filteredMargins = useMemo(() => {
    const q = search.trim().toLowerCase();
    return margins.filter((m) => !q || String(m.productName || '').toLowerCase().includes(q));
  }, [margins, search]);

  const maxAbsPercent = useMemo(
    () => Math.max(...margins.map((m) => Math.abs(Number(m.marginPercent) || 0)), 1),
    [margins]
  );

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between gap-4">
          <div>
            <h1 className="text-2xl font-bold text-white">Financial Dashboard & P&L</h1>
            <p className="text-sm text-white/50 mt-1">
              {new Date().toLocaleDateString('en-US', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' })}
            </p>
          </div>
          {pnl && (
            <div className="hidden sm:block text-right bg-white/10 backdrop-blur-sm px-5 py-2.5 rounded-xl border border-white/10">
              <p className="text-[11px] text-white/50 uppercase tracking-wide">Today&apos;s Net Profit</p>
              <p className={`text-lg font-bold ${Number(pnl.netProfit) >= 0 ? 'text-gramsure-gold' : 'text-red-300'}`}>
                Rs. {Number(pnl.netProfit).toFixed(0)}
              </p>
            </div>
          )}
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {loading ? (
          <div className="grid grid-cols-2 sm:grid-cols-5 gap-4">
            {[...Array(5)].map((_, i) => (
              <div key={i} className="h-20 bg-white rounded-2xl border border-gray-100 animate-pulse" />
            ))}
          </div>
        ) : (
          <>
            {/* KPI cards */}
            {pnl && (
              <div className="grid grid-cols-2 lg:grid-cols-5 gap-4">
                <Card title="Revenue" value={`Rs. ${pnl.revenue.toFixed(0)}`} icon="money" />
                <Card title="COGS" value={`Rs. ${pnl.cogs.toFixed(0)}`} icon="box" subtitle="cost of goods sold" />
                <Card title="Expenses" value={`Rs. ${pnl.expenses.toFixed(0)}`} icon="cart" />
                <Card title="Salaries" value={`Rs. ${pnl.salaries.toFixed(0)}`} icon="users" />
                <Card
                  title="Net Profit"
                  value={`Rs. ${pnl.netProfit.toFixed(0)}`}
                  icon="chart"
                  tone={pnl.netProfit >= 0 ? 'good' : 'critical'}
                  subtitle={netMargin !== null ? `${netMargin.toFixed(1)}% net margin` : undefined}
                />
              </div>
            )}

            {/* Charts row 1 */}
            {pnl && (
              <div className="grid grid-cols-1 lg:grid-cols-5 gap-6">
                <Panel title="Where Today's Revenue Goes" className="lg:col-span-3">
                  <HBarList items={flowBars} emptyText="No financial data yet" />
                  <p className="text-[11px] text-gray-400 mt-4">
                    Revenue minus COGS, expenses and salaries gives net profit.
                  </p>
                </Panel>

                <Panel title="Cost Breakdown" className="lg:col-span-2">
                  <div className="py-3">
                    {totalCosts <= 0 ? (
                      <p className="text-sm text-gray-400 text-center py-10">No costs recorded today</p>
                    ) : (
                      <DonutChart
                        centerValue={fmtRs(totalCosts).replace('Rs. ', '')}
                        centerLabel="total costs"
                        segments={costSegments}
                        size={130}
                      />
                    )}
                  </div>
                </Panel>
              </div>
            )}

            {/* Charts row 2 */}
            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
              <Panel title="Net Profit Margin (Today)">
                <div className="py-3">
                  {netMargin === null ? (
                    <p className="text-sm text-gray-400 text-center py-10">No revenue today</p>
                  ) : (
                    <GaugeChart
                      value={Math.max(netMargin, 0)}
                      label={netMargin < 0 ? `Loss today (${netMargin.toFixed(1)}%)` : `${netMargin.toFixed(1)}% of revenue`}
                    />
                  )}
                </div>
              </Panel>

              <Panel title="Top Products by Margin">
                <HBarList items={topMarginProducts} emptyText="No sales data yet" />
              </Panel>

              <Panel title="Best Margin %">
                <HBarList items={marginPercentBars} emptyText="No sales data yet" />
              </Panel>
            </div>

            {/* Table */}
            <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
              <div className="p-4 border-b border-gray-100 flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
                <h3 className="text-sm font-semibold text-gray-800">
                  Product-wise Margin Analysis
                  <span className="ml-2 text-xs font-normal text-gray-400">
                    {filteredMargins.length} product{filteredMargins.length !== 1 ? 's' : ''}
                    {lossMakers > 0 && ` · ${lossMakers} at a loss`}
                  </span>
                </h3>
                <input
                  type="text"
                  value={search}
                  onChange={(e) => setSearch(e.target.value)}
                  placeholder="Search product..."
                  className="w-full sm:w-52 px-3 py-2 text-sm bg-gray-50 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent"
                />
              </div>
              <div className="overflow-x-auto">
                <table className="w-full text-sm">
                  <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                    <tr>
                      <th className="text-left px-5 py-3 font-semibold">Product</th>
                      <th className="text-left px-5 py-3 font-semibold">Revenue</th>
                      <th className="text-left px-5 py-3 font-semibold">COGS</th>
                      <th className="text-left px-5 py-3 font-semibold">Margin</th>
                      <th className="text-left px-5 py-3 font-semibold">Margin %</th>
                    </tr>
                  </thead>
                  <tbody>
                    {filteredMargins.map((m) => (
                      <tr key={m.productName} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                        <td className="px-5 py-3 font-medium text-gray-800">{m.productName}</td>
                        <td className="px-5 py-3 text-gray-600">Rs. {m.revenue.toFixed(0)}</td>
                        <td className="px-5 py-3 text-gray-600">Rs. {m.cogs.toFixed(0)}</td>
                        <td className="px-5 py-3 font-medium text-gray-800">Rs. {m.margin.toFixed(0)}</td>
                        <td className="px-5 py-3">
                          <div className="flex items-center gap-2">
                            <div className="w-20 h-1.5 bg-gray-100 rounded-full overflow-hidden">
                              <div
                                className="h-full rounded-full transition-all duration-700"
                                style={{
                                  width: `${Math.max((Math.abs(m.marginPercent) / maxAbsPercent) * 100, 4)}%`,
                                  backgroundColor: m.marginPercent < 0 ? '#dc2626' : '#16a34a',
                                }}
                              />
                            </div>
                            <span className={m.marginPercent < 0 ? 'text-[#dc2626]' : 'text-[#16a34a]'}>
                              {m.marginPercent.toFixed(1)}%
                            </span>
                          </div>
                        </td>
                      </tr>
                    ))}
                    {filteredMargins.length === 0 && (
                      <tr>
                        <td colSpan={5} className="px-5 py-12 text-center text-gray-400">
                          {margins.length === 0 ? 'No sales data yet.' : 'No products match your search.'}
                        </td>
                      </tr>
                    )}
                  </tbody>
                  {margins.length > 0 && !search && (
                    <tfoot>
                      <tr className="border-t border-gray-100 bg-gray-50/60">
                        <td className="px-5 py-3 text-xs font-semibold uppercase text-gray-500">Total revenue</td>
                        <td className="px-5 py-3 font-bold text-gray-800">{fmtRs(totalProductRevenue)}</td>
                        <td colSpan={3} />
                      </tr>
                    </tfoot>
                  )}
                </table>
              </div>
            </div>
          </>
        )}
      </div>
    </div>
  );
}

// NEW: small presentational wrapper for consistent card styling
function Panel({ title, right, className = '', children }) {
  return (
    <div className={`bg-white rounded-2xl shadow-sm border border-gray-100 p-5 ${className}`}>
      <div className="flex items-center justify-between mb-4 gap-3">
        <h3 className="text-sm font-semibold text-gray-800">{title}</h3>
        {right}
      </div>
      {children}
    </div>
  );
}