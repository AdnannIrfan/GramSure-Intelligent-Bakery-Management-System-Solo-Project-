import { useEffect, useMemo, useState } from 'react';
import apiClient from '../../services/apiClient';
import Badge from '../../components/common/Badge';
import Card from '../../components/common/Card'; // NEW
import { DonutChart, HBarList } from '../../components/charts/DashboardCharts'; // NEW

// If your backend mounts the transfer routes under a different path, change only this line.
const TRANSFERS_PATH = '/stock-transfers';

const ANOMALY_LABELS = {
  LOW_REVENUE: 'Low revenue',
  HIGH_YIELD_VARIANCE: 'High yield variance',
  HIGH_FRAUD_FLAGS: 'High fraud flags',
  SALES_BELOW_PRODUCTION: 'Sales below production',
};

const STATUS_STYLES = {
  pending: 'bg-amber-50 text-amber-700',
  in_transit: 'bg-blue-50 text-blue-700',
  completed: 'bg-emerald-50 text-emerald-700',
  cancelled: 'bg-gray-100 text-gray-500',
};

const errMsg = (err, fallback) => err?.response?.data?.message || fallback;
const money = (n) => `Rs. ${Math.round(Number(n) || 0).toLocaleString()}`;

function scoreClass(score) {
  if (score >= 75) return 'bg-emerald-50 text-emerald-700';
  if (score >= 50) return 'bg-amber-50 text-amber-700';
  return 'bg-red-50 text-red-700';
}

// NEW: same thresholds as scoreClass, as chart colors
function scoreColor(score) {
  if (score >= 75) return '#16a34a';
  if (score >= 50) return '#f59e0b';
  return '#dc2626';
}

export default function BranchesPage() {
  const [branches, setBranches] = useState([]);
  const [dashboard, setDashboard] = useState(null);
  const [transfers, setTransfers] = useState([]);
  const [transfersError, setTransfersError] = useState('');
  const [loading, setLoading] = useState(true);
  const [notice, setNotice] = useState(null); // { type: 'success' | 'error', text }
  const [busyId, setBusyId] = useState(null);

  const [showForm, setShowForm] = useState(false);
  const [form, setForm] = useState({ name: '', address: '' });

  const [showTransferForm, setShowTransferForm] = useState(false);
  const [transferForm, setTransferForm] = useState({
    fromBranchId: '',
    toBranchId: '',
    materialName: '',
    quantity: '',
  });
  const [transferFilter, setTransferFilter] = useState('');

  useEffect(() => {
    loadData();
  }, []);

  useEffect(() => {
    loadTransfers();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [transferFilter]);

  async function loadData() {
    setLoading(true);
    try {
      const [branchesRes, dashboardRes] = await Promise.all([
        apiClient.get('/branches'),
        apiClient.get('/branches/consolidated-dashboard'),
      ]);
      setBranches(branchesRes.data.data);
      setDashboard(dashboardRes.data.data);
    } catch (err) {
      console.error('Failed to load branch data:', err);
      setNotice({ type: 'error', text: errMsg(err, 'Failed to load branch data') });
    } finally {
      setLoading(false);
    }
  }

  async function loadTransfers() {
    try {
      const res = await apiClient.get(TRANSFERS_PATH, {
        params: transferFilter ? { branchId: transferFilter } : {},
      });
      setTransfers(res.data.data);
      setTransfersError('');
    } catch (err) {
      console.error('Failed to load transfers:', err);
      setTransfersError(errMsg(err, 'Failed to load transfers'));
    }
  }

  async function handleSubmit(e) {
    e.preventDefault();
    try {
      await apiClient.post('/branches', form);
      setShowForm(false);
      setForm({ name: '', address: '' });
      setNotice({ type: 'success', text: 'Branch created.' });
      loadData();
    } catch (err) {
      setNotice({ type: 'error', text: errMsg(err, 'Failed to create branch') });
    }
  }

  async function handleDeactivate(branch) {
    if (!window.confirm(`Deactivate "${branch.name}"? It will no longer appear in the dashboard.`)) return;
    setBusyId(branch.id);
    try {
      await apiClient.delete(`/branches/${branch.id}`);
      setNotice({ type: 'success', text: `${branch.name} deactivated.` });
      await loadData();
      loadTransfers();
    } catch (err) {
      setNotice({ type: 'error', text: errMsg(err, 'Failed to deactivate branch') });
    } finally {
      setBusyId(null);
    }
  }

  async function handleTransferSubmit(e) {
    e.preventDefault();
    if (transferForm.fromBranchId === transferForm.toBranchId) {
      setNotice({ type: 'error', text: 'Source and destination branch must be different.' });
      return;
    }
    try {
      await apiClient.post(TRANSFERS_PATH, {
        fromBranchId: transferForm.fromBranchId,
        toBranchId: transferForm.toBranchId,
        materialName: transferForm.materialName.trim(),
        quantity: Number(transferForm.quantity),
      });
      setNotice({
        type: 'success',
        text: 'Transfer created. Stock has been taken from the source branch. Mark it received once it arrives.',
      });
      setTransferForm({ ...transferForm, materialName: '', quantity: '' });
      setShowTransferForm(false);
      loadTransfers();
    } catch (err) {
      setNotice({ type: 'error', text: errMsg(err, 'Failed to create transfer') });
    }
  }

  async function handleTransferAction(transfer, action) {
    const question =
      action === 'complete'
        ? 'Mark this transfer as received? Stock will be added to the destination branch.'
        : 'Cancel this transfer? Stock will be returned to the source branch.';
    if (!window.confirm(question)) return;

    setBusyId(transfer.id);
    try {
      await apiClient.patch(`${TRANSFERS_PATH}/${transfer.id}/${action}`);
      setNotice({
        type: 'success',
        text: action === 'complete' ? 'Transfer completed.' : 'Transfer cancelled and stock returned.',
      });
      loadTransfers();
    } catch (err) {
      setNotice({ type: 'error', text: errMsg(err, `Failed to ${action} transfer`) });
      loadTransfers();
    } finally {
      setBusyId(null);
    }
  }

  const branchName = (id) => branches.find((b) => b.id === id)?.name || 'Unknown branch';

  const rows = branches
    .map((b) => ({ branch: b, perf: dashboard?.branches?.find((d) => d.branchId === b.id) }))
    .sort((a, b) => (a.perf?.rank ?? 999) - (b.perf?.rank ?? 999));

  const flagged = dashboard?.flaggedBranches || [];
  const totals = dashboard?.totals;

  /* ---------- NEW: derived chart data (display only) ---------- */

  const revenueBars = useMemo(
    () =>
      rows
        .filter((r) => r.perf)
        .sort((a, b) => Number(b.perf.totalRevenue) - Number(a.perf.totalRevenue))
        .slice(0, 8)
        .map(({ branch, perf }, i) => ({
          label: branch.name,
          value: Number(perf.totalRevenue) || 0,
          display: money(perf.totalRevenue),
          color: i === 0 ? '#f59e0b' : '#1e293b',
        })),
    // eslint-disable-next-line react-hooks/exhaustive-deps
    [branches, dashboard]
  );

  const scoreBars = useMemo(
    () =>
      rows
        .filter((r) => r.perf)
        .sort((a, b) => Number(b.perf.performanceScore) - Number(a.perf.performanceScore))
        .slice(0, 8)
        .map(({ branch, perf }) => ({
          label: branch.name,
          value: Number(perf.performanceScore) || 0,
          display: `${perf.performanceScore}/100`,
          color: scoreColor(Number(perf.performanceScore)),
        })),
    // eslint-disable-next-line react-hooks/exhaustive-deps
    [branches, dashboard]
  );

  const fraudBars = useMemo(
    () =>
      rows
        .filter((r) => r.perf && Number(r.perf.openFraudFlags) > 0)
        .sort((a, b) => Number(b.perf.openFraudFlags) - Number(a.perf.openFraudFlags))
        .slice(0, 6)
        .map(({ branch, perf }) => ({
          label: branch.name,
          value: Number(perf.openFraudFlags),
          display: `${perf.openFraudFlags} open`,
          color: '#dc2626',
        })),
    // eslint-disable-next-line react-hooks/exhaustive-deps
    [branches, dashboard]
  );

  const transferSegments = useMemo(() => {
    const count = (s) => transfers.filter((t) => t.status === s).length;
    return [
      { label: 'Completed', value: count('completed'), color: '#16a34a' },
      { label: 'Pending', value: count('pending'), color: '#f59e0b' },
      { label: 'In transit', value: count('in_transit'), color: '#3b82f6' },
      { label: 'Cancelled', value: count('cancelled'), color: '#9ca3af' },
    ];
  }, [transfers]);

  const openTransfers = transfers.filter((t) => t.status === 'pending' || t.status === 'in_transit').length;

  const inputClass =
    'border border-gray-200 bg-white rounded-xl px-3.5 py-2.5 text-sm focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent transition-shadow placeholder:text-gray-400';

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between gap-4">
          <div>
            <h1 className="text-2xl font-bold text-white">Multi-Branch & Franchise Management</h1>
            <p className="text-sm text-white/50 mt-1">
              {branches.length} branch{branches.length !== 1 ? 'es' : ''}
            </p>
          </div>
          <button
            onClick={() => setShowForm(!showForm)}
            className="bg-gramsure-gold text-gramsure-navy px-4 py-2.5 rounded-xl text-sm font-semibold hover:opacity-90 active:scale-[0.98] transition-all shadow-lg shadow-black/10"
          >
            {showForm ? 'Cancel' : '+ New Branch'}
          </button>
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {notice && (
          <div
            className={`rounded-2xl px-5 py-3 text-sm flex items-start justify-between gap-4 border ${
              notice.type === 'error'
                ? 'bg-red-50 border-red-100 text-red-700'
                : 'bg-emerald-50 border-emerald-100 text-emerald-700'
            }`}
          >
            <span>{notice.text}</span>
            <button onClick={() => setNotice(null)} className="font-semibold opacity-70 hover:opacity-100">
              Dismiss
            </button>
          </div>
        )}

        {showForm && (
          <form
            onSubmit={handleSubmit}
            className="bg-white rounded-2xl shadow-sm border border-gray-100 p-5 grid grid-cols-1 sm:grid-cols-2 gap-4"
          >
            <div className="sm:col-span-2">
              <h3 className="text-sm font-semibold text-gray-800 mb-1">New Branch Details</h3>
            </div>
            <input
              placeholder="Branch Name"
              value={form.name}
              onChange={(e) => setForm({ ...form, name: e.target.value })}
              required
              className={inputClass}
            />
            <input
              placeholder="Address"
              value={form.address}
              onChange={(e) => setForm({ ...form, address: e.target.value })}
              className={inputClass}
            />
            <button
              type="submit"
              className="sm:col-span-2 bg-gramsure-navy text-white font-semibold py-2.5 rounded-xl text-sm hover:bg-slate-800 active:scale-[0.99] transition-all"
            >
              Save Branch
            </button>
          </form>
        )}

        {loading ? (
          <div className="bg-white rounded-2xl shadow-sm border border-gray-100 p-6 space-y-3">
            {[...Array(3)].map((_, i) => (
              <div key={i} className="h-10 bg-gray-100 rounded-lg animate-pulse" />
            ))}
          </div>
        ) : (
          <>
            {/* Consolidated totals */}
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
              <Card title="Total Revenue (30 days)" value={money(totals?.totalRevenue)} icon="money" />
              <Card
                title="Open Fraud Flags"
                value={totals?.totalOpenFraudFlags ?? 0}
                icon="shield"
                tone={(totals?.totalOpenFraudFlags ?? 0) > 0 ? 'critical' : 'good'}
              />
              <Card title="Active Branches" value={totals?.branchCount ?? 0} icon="cart" />
              <Card
                title="Branches Flagged"
                value={flagged.length}
                icon="alert"
                tone={flagged.length > 0 ? 'warn' : 'good'}
                subtitle={flagged.length > 0 ? 'see details below' : 'all branches normal'}
              />
            </div>

            {/* Cross-branch anomaly benchmarking */}
            {flagged.length > 0 && (
              <div className="bg-[#f97316]/5 border border-[#f97316]/20 rounded-2xl p-5">
                <div className="flex items-center gap-2 mb-3">
                  <span className="w-6 h-6 rounded-lg bg-[#f97316]/10 flex items-center justify-center text-[#f97316] text-xs font-bold shrink-0">
                    !
                  </span>
                  <p className="text-sm font-semibold text-[#9a5117]">Branches to Investigate</p>
                </div>
                <ul className="text-sm text-[#9a5117] space-y-1.5 pl-8">
                  {flagged.map((f) => {
                    const under = dashboard.underperformingBranches?.find((u) => u.branchId === f.branchId);
                    return (
                      <li key={f.branchId} className="list-disc">
                        <span className="font-medium">{f.branchName}</span>
                        {' — '}
                        {f.anomalies
                          .map((a) =>
                            a === 'LOW_REVENUE' && under
                              ? `Low revenue (${under.percentBelowAverage}% below average)`
                              : ANOMALY_LABELS[a] || a
                          )
                          .join(', ')}
                      </li>
                    );
                  })}
                </ul>
              </div>
            )}

            {/* Charts */}
            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
              <Panel title="Revenue by Branch (30 days)">
                <HBarList items={revenueBars} emptyText="No branch data yet" />
              </Panel>
              <Panel title="Performance Score">
                <HBarList items={scoreBars} emptyText="No branch data yet" />
                <p className="text-[11px] text-gray-400 mt-3">Green 75+, orange 50-74, red below 50.</p>
              </Panel>
              <Panel title="Open Fraud Flags by Branch">
                <HBarList items={fraudBars} emptyText="No open fraud flags" />
              </Panel>
            </div>

            {/* Branch rankings */}
            <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
              <div className="px-5 py-4 border-b border-gray-50">
                <h2 className="text-sm font-semibold text-gray-800">Branch Performance Ranking</h2>
                <p className="text-xs text-gray-400 mt-0.5">
                  Score = 50% revenue, 25% yield accuracy, 25% fraud flags (last 30 days)
                </p>
              </div>
              <div className="overflow-x-auto">
                <table className="w-full text-sm">
                  <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                    <tr>
                      <th className="text-left px-5 py-3 font-semibold">Rank</th>
                      <th className="text-left px-5 py-3 font-semibold">Branch</th>
                      <th className="text-left px-5 py-3 font-semibold">Address</th>
                      <th className="text-left px-5 py-3 font-semibold">30-day Revenue</th>
                      <th className="text-left px-5 py-3 font-semibold">Open Fraud Flags</th>
                      <th className="text-left px-5 py-3 font-semibold">Avg Variance</th>
                      <th className="text-left px-5 py-3 font-semibold">Score</th>
                      <th className="text-left px-5 py-3 font-semibold">Status</th>
                      <th className="px-5 py-3" />
                    </tr>
                  </thead>
                  <tbody>
                    {rows.map(({ branch: b, perf }) => (
                      <tr key={b.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                        <td className="px-5 py-3 font-semibold text-gray-700">{perf?.rank ? `#${perf.rank}` : '-'}</td>
                        <td className="px-5 py-3 font-medium text-gray-800">{b.name}</td>
                        <td className="px-5 py-3 text-gray-600">{b.address}</td>
                        <td className="px-5 py-3 font-medium text-gray-800">{money(perf?.totalRevenue)}</td>
                        <td className="px-5 py-3">
                          {perf?.openFraudFlags > 0 ? (
                            <Badge tone="critical" dot>{perf.openFraudFlags}</Badge>
                          ) : (
                            <Badge tone="good" dot>0</Badge>
                          )}
                        </td>
                        <td className="px-5 py-3 text-gray-600">
                          {perf?.avgVariancePercent != null ? `${perf.avgVariancePercent}%` : 'No data'}
                        </td>
                        <td className="px-5 py-3">
                          {perf ? (
                            <span className={`px-2.5 py-1 rounded-lg text-xs font-semibold ${scoreClass(perf.performanceScore)}`}>
                              {perf.performanceScore}
                            </span>
                          ) : (
                            '-'
                          )}
                        </td>
                        <td className="px-5 py-3">
                          {perf?.anomalies?.length > 0 ? (
                            <div className="flex flex-wrap gap-1.5">
                              {perf.anomalies.map((a) => (
                                <span key={a} className="px-2 py-0.5 rounded-md text-[11px] font-medium bg-orange-50 text-orange-700">
                                  {ANOMALY_LABELS[a] || a}
                                </span>
                              ))}
                            </div>
                          ) : (
                            <span className="text-xs text-gray-400">Normal</span>
                          )}
                        </td>
                        <td className="px-5 py-3 text-right">
                          <button
                            onClick={() => handleDeactivate(b)}
                            disabled={busyId === b.id}
                            className="text-xs font-semibold text-red-600 bg-red-50 hover:bg-red-100 px-2.5 py-1 rounded-lg transition-colors disabled:opacity-40"
                          >
                            Deactivate
                          </button>
                        </td>
                      </tr>
                    ))}
                    {rows.length === 0 && (
                      <tr>
                        <td colSpan={9} className="px-5 py-12 text-center text-gray-400">
                          No branches added yet.
                        </td>
                      </tr>
                    )}
                  </tbody>
                </table>
              </div>
            </div>

            {/* Inter-branch stock transfers */}
            <div className="grid grid-cols-1 lg:grid-cols-4 gap-6">
              <Panel title="Transfer Status" className="lg:col-span-1">
                {transfers.length === 0 ? (
                  <p className="text-sm text-gray-400 text-center py-10">No transfers yet</p>
                ) : (
                  <div className="flex flex-col items-center gap-4">
                    <DonutChart
                      centerValue={transfers.length}
                      centerLabel="transfers"
                      segments={transferSegments}
                      size={120}
                    />
                    <p className="text-xs text-gray-400">{openTransfers} waiting to be received</p>
                  </div>
                )}
              </Panel>

              <div className="lg:col-span-3 bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
                <div className="px-5 py-4 border-b border-gray-50 flex flex-wrap items-center justify-between gap-3">
                  <div>
                    <h2 className="text-sm font-semibold text-gray-800">Inter-Branch Stock Transfers</h2>
                    <p className="text-xs text-gray-400 mt-0.5">
                      Stock leaves the source branch when a transfer is created and reaches the destination when it is marked received.
                    </p>
                  </div>
                  <div className="flex items-center gap-3">
                    <select
                      value={transferFilter}
                      onChange={(e) => setTransferFilter(e.target.value)}
                      className={inputClass}
                    >
                      <option value="">All branches</option>
                      {branches.map((b) => (
                        <option key={b.id} value={b.id}>
                          {b.name}
                        </option>
                      ))}
                    </select>
                    <button
                      onClick={() => setShowTransferForm(!showTransferForm)}
                      disabled={branches.length < 2}
                      title={branches.length < 2 ? 'You need at least two branches' : ''}
                      className="bg-gramsure-navy text-white px-4 py-2.5 rounded-xl text-sm font-semibold hover:bg-slate-800 active:scale-[0.98] transition-all disabled:opacity-40"
                    >
                      {showTransferForm ? 'Cancel' : '+ New Transfer'}
                    </button>
                  </div>
                </div>

                {showTransferForm && (
                  <form
                    onSubmit={handleTransferSubmit}
                    className="p-5 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-4 border-b border-gray-50 bg-gray-50/40"
                  >
                    <select
                      value={transferForm.fromBranchId}
                      onChange={(e) => setTransferForm({ ...transferForm, fromBranchId: e.target.value })}
                      required
                      className={inputClass}
                    >
                      <option value="">From branch</option>
                      {branches.map((b) => (
                        <option key={b.id} value={b.id}>
                          {b.name}
                        </option>
                      ))}
                    </select>
                    <select
                      value={transferForm.toBranchId}
                      onChange={(e) => setTransferForm({ ...transferForm, toBranchId: e.target.value })}
                      required
                      className={inputClass}
                    >
                      <option value="">To branch</option>
                      {branches
                        .filter((b) => b.id !== transferForm.fromBranchId)
                        .map((b) => (
                          <option key={b.id} value={b.id}>
                            {b.name}
                          </option>
                        ))}
                    </select>
                    <input
                      placeholder="Material name (exact, e.g. Butter)"
                      value={transferForm.materialName}
                      onChange={(e) => setTransferForm({ ...transferForm, materialName: e.target.value })}
                      required
                      className={inputClass}
                    />
                    <input
                      type="number"
                      min="0.001"
                      step="0.001"
                      placeholder="Quantity"
                      value={transferForm.quantity}
                      onChange={(e) => setTransferForm({ ...transferForm, quantity: e.target.value })}
                      required
                      className={inputClass}
                    />
                    <button
                      type="submit"
                      className="bg-gramsure-gold text-gramsure-navy font-semibold py-2.5 rounded-xl text-sm hover:opacity-90 active:scale-[0.99] transition-all"
                    >
                      Create Transfer
                    </button>
                  </form>
                )}

                {transfersError && (
                  <div className="px-5 py-3 text-sm text-red-600 bg-red-50">{transfersError}</div>
                )}

                <div className="overflow-x-auto">
                  <table className="w-full text-sm">
                    <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                      <tr>
                        <th className="text-left px-5 py-3 font-semibold">Date</th>
                        <th className="text-left px-5 py-3 font-semibold">From</th>
                        <th className="text-left px-5 py-3 font-semibold">To</th>
                        <th className="text-left px-5 py-3 font-semibold">Material</th>
                        <th className="text-left px-5 py-3 font-semibold">Quantity</th>
                        <th className="text-left px-5 py-3 font-semibold">Status</th>
                        <th className="px-5 py-3" />
                      </tr>
                    </thead>
                    <tbody>
                      {transfers.map((t) => {
                        const open = t.status === 'pending' || t.status === 'in_transit';
                        return (
                          <tr key={t.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                            <td className="px-5 py-3 text-gray-600 whitespace-nowrap">
                              {new Date(t.created_at).toLocaleString()}
                            </td>
                            <td className="px-5 py-3 text-gray-800">{branchName(t.from_branch_id)}</td>
                            <td className="px-5 py-3 text-gray-800">{branchName(t.to_branch_id)}</td>
                            <td className="px-5 py-3 font-medium text-gray-800">{t.material_name}</td>
                            <td className="px-5 py-3 text-gray-800">
                              {Number(t.quantity)} {t.unit}
                            </td>
                            <td className="px-5 py-3">
                              <span
                                className={`px-2.5 py-1 rounded-lg text-xs font-semibold capitalize ${
                                  STATUS_STYLES[t.status] || 'bg-gray-100 text-gray-500'
                                }`}
                              >
                                {t.status.replace('_', ' ')}
                              </span>
                            </td>
                            <td className="px-5 py-3 text-right whitespace-nowrap">
                              {open && (
                                <div className="flex justify-end gap-2">
                                  <button
                                    onClick={() => handleTransferAction(t, 'complete')}
                                    disabled={busyId === t.id}
                                    className="text-xs font-semibold text-emerald-700 bg-emerald-50 hover:bg-emerald-100 px-2.5 py-1 rounded-lg transition-colors disabled:opacity-40"
                                  >
                                    Mark Received
                                  </button>
                                  <button
                                    onClick={() => handleTransferAction(t, 'cancel')}
                                    disabled={busyId === t.id}
                                    className="text-xs font-semibold text-red-600 bg-red-50 hover:bg-red-100 px-2.5 py-1 rounded-lg transition-colors disabled:opacity-40"
                                  >
                                    Cancel
                                  </button>
                                </div>
                              )}
                            </td>
                          </tr>
                        );
                      })}
                      {transfers.length === 0 && (
                        <tr>
                          <td colSpan={7} className="px-5 py-12 text-center text-gray-400">
                            No stock transfers yet.
                          </td>
                        </tr>
                      )}
                    </tbody>
                  </table>
                </div>
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
