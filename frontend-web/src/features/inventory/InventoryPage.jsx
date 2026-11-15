import { useEffect, useMemo, useState } from 'react';
import apiClient from '../../services/apiClient';
import Badge from '../../components/common/Badge';
import Card from '../../components/common/Card'; // NEW
import { DonutChart, HBarList } from '../../components/charts/DashboardCharts'; // NEW

export default function InventoryPage() {
  const [stock, setStock] = useState([]);
  const [loading, setLoading] = useState(true);

  // NEW: UI-only state for table filtering
  const [search, setSearch] = useState('');
  const [statusFilter, setStatusFilter] = useState('all');

  useEffect(() => {
    loadStock();
  }, []);

  async function loadStock() {
    setLoading(true);
    try {
      const { data } = await apiClient.get('/stock');
      setStock(data.data);
    } catch (err) {
      console.error('Failed to load stock:', err);
    } finally {
      setLoading(false);
    }
  }

  function stockStatus(item) {
    if (item.quantity <= item.low_stock_threshold) return { label: 'CRITICAL', tone: 'critical' };
    if (item.quantity <= item.low_stock_threshold * 2) return { label: 'REORDER', tone: 'warn' };
    return { label: 'OK', tone: 'good' };
  }

  const criticalCount = stock.filter((i) => stockStatus(i).label === 'CRITICAL').length;
  const reorderCount = stock.filter((i) => stockStatus(i).label === 'REORDER').length;

  /* ---------- NEW: derived chart data (display only) ---------- */

  const okCount = stock.length - criticalCount - reorderCount;

  const statusSegments = useMemo(
    () => [
      { label: 'Healthy', value: okCount, color: '#16a34a' },
      { label: 'Reorder', value: reorderCount, color: '#f97316' },
      { label: 'Critical', value: criticalCount, color: '#dc2626' },
    ],
    [okCount, reorderCount, criticalCount]
  );

  const toneColor = { critical: '#dc2626', warn: '#f97316', good: '#16a34a' };

  // Items closest to (or below) their low-stock threshold
  const lowestVsThreshold = useMemo(() => {
    return stock
      .map((item) => {
        const qty = Number(item.quantity) || 0;
        const threshold = Number(item.low_stock_threshold) || 0;
        return { item, qty, threshold, ratio: threshold > 0 ? qty / threshold : Infinity };
      })
      .filter((x) => Number.isFinite(x.ratio))
      .sort((a, b) => a.ratio - b.ratio)
      .slice(0, 8)
      .map(({ item, qty, threshold, ratio }) => ({
        label: item.material_name,
        value: ratio,
        display: `${qty}${item.unit || ''} / ${threshold}${item.unit || ''}`,
        color: toneColor[stockStatus(item).tone],
      }));
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [stock]);

  // NEW: filtered table rows
  const filteredStock = useMemo(() => {
    const q = search.trim().toLowerCase();
    return stock.filter((item) => {
      const matchesSearch = !q || String(item.material_name || '').toLowerCase().includes(q);
      const matchesStatus = statusFilter === 'all' || stockStatus(item).label === statusFilter;
      return matchesSearch && matchesStatus;
    });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [stock, search, statusFilter]);

  // Fill level shown in the table: 100% = three times the low-stock threshold
  function levelPercent(item) {
    const qty = Number(item.quantity) || 0;
    const threshold = Number(item.low_stock_threshold) || 0;
    if (threshold <= 0) return 100;
    return Math.max(Math.min((qty / (threshold * 3)) * 100, 100), 3);
  }

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between gap-4">
          <div>
            <h1 className="text-2xl font-bold text-white">Live Inventory Status</h1>
            <p className="text-sm text-white/50 mt-1">{stock.length} material{stock.length !== 1 ? 's' : ''} tracked</p>
          </div>
          {criticalCount + reorderCount > 0 && (
            <div className="hidden sm:flex items-center gap-2 bg-white/10 backdrop-blur-sm px-4 py-2 rounded-xl border border-white/10">
              <span className="w-2 h-2 rounded-full bg-gramsure-gold animate-pulse" />
              <span className="text-sm text-white/80">
                {criticalCount + reorderCount} item{criticalCount + reorderCount !== 1 ? 's' : ''} need attention
              </span>
            </div>
          )}
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {/* KPI cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          <Card title="Total Materials" value={stock.length} icon="box" />
          <Card title="Healthy" value={okCount} icon="check" tone="good" subtitle="well stocked" />
          <Card
            title="Reorder Soon"
            value={reorderCount}
            icon="alert"
            tone={reorderCount > 0 ? 'warn' : 'good'}
          />
          <Card
            title="Critical"
            value={criticalCount}
            icon="shield"
            tone={criticalCount > 0 ? 'critical' : 'good'}
            subtitle={criticalCount > 0 ? 'at or below threshold' : undefined}
          />
        </div>

        {/* Charts */}
        <div className="grid grid-cols-1 lg:grid-cols-5 gap-6">
          <Panel title="Stock Health" className="lg:col-span-2">
            <div className="py-3">
              {stock.length === 0 ? (
                <p className="text-sm text-gray-400 text-center py-10">No stock items yet</p>
              ) : (
                <DonutChart centerValue={stock.length} centerLabel="materials" segments={statusSegments} />
              )}
            </div>
          </Panel>

          <Panel
            title="Closest to Running Out"
            className="lg:col-span-3"
            right={<span className="text-[11px] text-gray-400">quantity / low-stock threshold</span>}
          >
            <HBarList items={lowestVsThreshold} emptyText="No stock items yet" />
            <p className="text-[11px] text-gray-400 mt-4">
              A full bar means the item is at or above its threshold; shorter bars are closer to running out.
            </p>
          </Panel>
        </div>

        {/* Table */}
        <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
          <div className="p-4 border-b border-gray-100 flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
            <h3 className="text-sm font-semibold text-gray-800">
              All Materials
              <span className="ml-2 text-xs font-normal text-gray-400">{filteredStock.length} shown</span>
            </h3>
            <div className="flex items-center gap-2">
              <input
                type="text"
                value={search}
                onChange={(e) => setSearch(e.target.value)}
                placeholder="Search material..."
                className="w-full sm:w-52 px-3 py-2 text-sm bg-gray-50 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent"
              />
              <select
                value={statusFilter}
                onChange={(e) => setStatusFilter(e.target.value)}
                className="px-3 py-2 text-sm bg-gray-50 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent"
              >
                <option value="all">All statuses</option>
                <option value="CRITICAL">Critical</option>
                <option value="REORDER">Reorder</option>
                <option value="OK">OK</option>
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
                    <th className="text-left px-5 py-3 font-semibold">Material</th>
                    <th className="text-left px-5 py-3 font-semibold">Quantity</th>
                    <th className="text-left px-5 py-3 font-semibold">Unit</th>
                    <th className="text-left px-5 py-3 font-semibold">Level</th>
                    <th className="text-left px-5 py-3 font-semibold">Status</th>
                  </tr>
                </thead>
                <tbody>
                  {filteredStock.map((item) => {
                    const status = stockStatus(item);
                    return (
                      <tr key={item.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                        <td className="px-5 py-3 font-medium text-gray-800">{item.material_name}</td>
                        <td className="px-5 py-3 text-gray-600">{item.quantity}</td>
                        <td className="px-5 py-3 text-gray-600">{item.unit}</td>
                        <td className="px-5 py-3 w-48">
                          <div className="h-2 bg-gray-100 rounded-full overflow-hidden">
                            <div
                              className="h-full rounded-full transition-all duration-700"
                              style={{
                                width: `${levelPercent(item)}%`,
                                backgroundColor: toneColor[status.tone],
                              }}
                            />
                          </div>
                        </td>
                        <td className="px-5 py-3">
                          <Badge tone={status.tone} dot>{status.label}</Badge>
                        </td>
                      </tr>
                    );
                  })}
                  {filteredStock.length === 0 && (
                    <tr>
                      <td colSpan={5} className="px-5 py-12 text-center text-gray-400">
                        {stock.length === 0 ? 'No stock items recorded yet.' : 'No materials match your search.'}
                      </td>
                    </tr>
                  )}
                </tbody>
              </table>
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
      <div className="flex items-center justify-between mb-4 gap-3">
        <h3 className="text-sm font-semibold text-gray-800">{title}</h3>
        {right}
      </div>
      {children}
    </div>
  );
}