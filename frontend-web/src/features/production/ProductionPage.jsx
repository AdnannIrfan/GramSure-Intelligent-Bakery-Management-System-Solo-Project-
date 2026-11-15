import { useEffect, useMemo, useState } from 'react';
import apiClient from '../../services/apiClient';
import Badge from '../../components/common/Badge';
import Card from '../../components/common/Card'; // NEW
import { AreaTrendChart, DonutChart, HBarList, GaugeChart } from '../../components/charts/DashboardCharts'; // NEW

export default function ProductionPage() {
  const [batches, setBatches] = useState([]);
  const [yieldRate, setYieldRate] = useState(null);
  const [loading, setLoading] = useState(true);

  // NEW: UI-only state for table filtering
  const [search, setSearch] = useState('');
  const [flagFilter, setFlagFilter] = useState('all');
  const [visibleCount, setVisibleCount] = useState(25);

  useEffect(() => {
    loadData();
  }, []);

  async function loadData() {
    setLoading(true);
    try {
      const [batchesRes, yieldRes] = await Promise.all([
        apiClient.get('/batches'),
        apiClient.get('/batches/yield-rate'),
      ]);
      setBatches(batchesRes.data.data);
      setYieldRate(yieldRes.data.data.yieldRate);
    } catch (err) {
      console.error('Failed to load production data:', err);
    } finally {
      setLoading(false);
    }
  }

  const flaggedCount = batches.filter((b) => b.fraud_flag).length;

  /* ---------- NEW: derived chart data (display only) ---------- */

  const okCount = batches.length - flaggedCount;
  const yieldPct = yieldRate !== null ? yieldRate * 100 : undefined;

  const totalActual = useMemo(() => batches.reduce((s, b) => s + (Number(b.actual_units) || 0), 0), [batches]);

  const dailyUnits = useMemo(() => {
    const map = {};
    batches.forEach((b) => {
      const d = new Date(b.created_at);
      if (Number.isNaN(d.getTime())) return;
      const key = `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`;
      if (!map[key]) map[key] = { key, date: d, value: 0 };
      map[key].value += Number(b.actual_units) || 0;
    });
    return Object.values(map)
      .sort((a, b) => a.key.localeCompare(b.key))
      .slice(-14)
      .map((d) => ({
        label: d.date.toLocaleDateString('en-US', { month: 'short', day: 'numeric' }),
        value: d.value,
      }));
  }, [batches]);

  const productBars = useMemo(() => {
    const map = {};
    batches.forEach((b) => {
      const n = b.product_name || 'Unknown';
      map[n] = (map[n] || 0) + (Number(b.actual_units) || 0);
    });
    return Object.entries(map)
      .sort((a, b) => b[1] - a[1])
      .slice(0, 6)
      .map(([label, value], i) => ({
        label,
        value,
        display: `${value} units`,
        color: i === 0 ? '#f59e0b' : '#1e293b',
      }));
  }, [batches]);

  // Average variance per product, worst first
  const varianceBars = useMemo(() => {
    const map = {};
    batches.forEach((b) => {
      const v = parseFloat(b.variance_percent);
      if (Number.isNaN(v)) return;
      const n = b.product_name || 'Unknown';
      if (!map[n]) map[n] = { sum: 0, count: 0 };
      map[n].sum += v;
      map[n].count += 1;
    });
    return Object.entries(map)
      .map(([label, v]) => ({ label, avg: v.sum / v.count }))
      .sort((a, b) => a.avg - b.avg)
      .slice(0, 6)
      .map(({ label, avg }) => ({
        label,
        value: Math.abs(avg),
        display: `${avg.toFixed(1)}%`,
        color: avg < 0 ? '#dc2626' : '#16a34a',
      }));
  }, [batches]);

  const filteredBatches = useMemo(() => {
    const q = search.trim().toLowerCase();
    return batches.filter((b) => {
      const matchesSearch = !q || String(b.product_name || '').toLowerCase().includes(q);
      const matchesFlag =
        flagFilter === 'all' || (flagFilter === 'flagged' ? b.fraud_flag : !b.fraud_flag);
      return matchesSearch && matchesFlag;
    });
  }, [batches, search, flagFilter]);

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between gap-4">
          <div>
            <h1 className="text-2xl font-bold text-white">Production & Batch Management</h1>
            <p className="text-sm text-white/50 mt-1">{batches.length} batch{batches.length !== 1 ? 'es' : ''} logged</p>
          </div>
          {yieldRate !== null && (
            <div className="text-right bg-white/10 backdrop-blur-sm px-5 py-2.5 rounded-xl border border-white/10">
              <p className="text-[11px] text-white/50 uppercase tracking-wide">30-Day Yield Rate</p>
              <p className="text-lg font-bold text-gramsure-gold">{(yieldRate * 100).toFixed(1)}%</p>
            </div>
          )}
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {/* KPI cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          <Card title="Total Batches" value={batches.length} icon="box" />
          <Card
            title="Yield Rate"
            value={yieldRate !== null ? `${(yieldRate * 100).toFixed(1)}%` : '—'}
            icon="chart"
            subtitle="last 30 days"
          />
          <Card title="Units Produced" value={totalActual.toLocaleString()} icon="cart" subtitle="across all batches" />
          <Card
            title="Flagged Batches"
            value={flaggedCount}
            icon="shield"
            tone={flaggedCount > 0 ? 'critical' : 'good'}
            subtitle={flaggedCount > 0 ? 'need a look' : 'all batches OK'}
          />
        </div>

        {/* Charts row 1 */}
        <div className="grid grid-cols-1 lg:grid-cols-5 gap-6">
          <Panel title="Units Produced per Day (Last 14 Days)" className="lg:col-span-3">
            <div className="pb-6">
              <AreaTrendChart data={dailyUnits} id="prod-daily" prefix="" />
            </div>
          </Panel>

          <Panel title="30-Day Yield Rate" className="lg:col-span-2">
            <div className="py-4">
              {yieldPct === undefined ? (
                <EmptyState text="No yield data yet" />
              ) : (
                <GaugeChart value={yieldPct} label={`${yieldPct.toFixed(1)}% of expected output`} />
              )}
            </div>
          </Panel>
        </div>

        {/* Charts row 2 */}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          <Panel title="Batch Quality">
            {batches.length === 0 ? (
              <EmptyState text="No batches yet" />
            ) : (
              <DonutChart
                centerValue={batches.length}
                centerLabel="batches"
                size={130}
                segments={[
                  { label: 'OK', value: okCount, color: '#16a34a' },
                  { label: 'Flagged', value: flaggedCount, color: '#dc2626' },
                ]}
              />
            )}
          </Panel>

          <Panel title="Units by Product">
            <HBarList items={productBars} emptyText="No batches yet" />
          </Panel>

          <Panel title="Average Variance by Product">
            <HBarList items={varianceBars} emptyText="No batches yet" />
            <p className="text-[11px] text-gray-400 mt-3">Red means output was below expected on average.</p>
          </Panel>
        </div>

        {/* Table */}
        <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
          <div className="p-4 border-b border-gray-100 flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
            <h3 className="text-sm font-semibold text-gray-800">
              All Batches
              <span className="ml-2 text-xs font-normal text-gray-400">{filteredBatches.length} shown</span>
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
                value={flagFilter}
                onChange={(e) => {
                  setFlagFilter(e.target.value);
                  setVisibleCount(25);
                }}
                className="px-3 py-2 text-sm bg-gray-50 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent"
              >
                <option value="all">All batches</option>
                <option value="flagged">Flagged only</option>
                <option value="ok">OK only</option>
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
                    <th className="text-left px-5 py-3 font-semibold">Expected</th>
                    <th className="text-left px-5 py-3 font-semibold">Actual</th>
                    <th className="text-left px-5 py-3 font-semibold">Variance</th>
                    <th className="text-left px-5 py-3 font-semibold">Flag</th>
                    <th className="text-left px-5 py-3 font-semibold">Date</th>
                  </tr>
                </thead>
                <tbody>
                  {filteredBatches.slice(0, visibleCount).map((b) => (
                    <tr key={b.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                      <td className="px-5 py-3 font-medium text-gray-800">{b.product_name}</td>
                      <td className="px-5 py-3 text-gray-600">{b.expected_units}</td>
                      <td className="px-5 py-3 text-gray-600">{b.actual_units}</td>
                      <td className="px-5 py-3">
                        <span className={parseFloat(b.variance_percent) < 0 ? 'text-[#dc2626] font-medium' : 'text-gray-600'}>
                          {parseFloat(b.variance_percent).toFixed(1)}%
                        </span>
                      </td>
                      <td className="px-5 py-3">
                        {b.fraud_flag ? <Badge tone="critical" dot>Flagged</Badge> : <Badge tone="good" dot>OK</Badge>}
                      </td>
                      <td className="px-5 py-3 text-gray-400">{new Date(b.created_at).toLocaleDateString()}</td>
                    </tr>
                  ))}
                  {filteredBatches.length === 0 && (
                    <tr>
                      <td colSpan={6} className="px-5 py-12 text-center text-gray-400">
                        {batches.length === 0 ? 'No production batches logged yet.' : 'No batches match your filters.'}
                      </td>
                    </tr>
                  )}
                </tbody>
              </table>
            </div>
          )}

          {!loading && filteredBatches.length > visibleCount && (
            <div className="p-4 border-t border-gray-100 text-center">
              <button
                onClick={() => setVisibleCount((c) => c + 25)}
                className="text-sm font-medium text-gramsure-navy hover:bg-gray-100 px-4 py-2 rounded-lg transition-colors"
              >
                Show more ({filteredBatches.length - visibleCount} remaining)
              </button>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

// NEW: small presentational helpers
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

function EmptyState({ text }) {
  return <p className="text-sm text-gray-400 text-center py-10">{text}</p>;
}