import { useEffect, useMemo, useState } from 'react';
import apiClient from '../../services/apiClient';
import Badge from '../../components/common/Badge';
import Card from '../../components/common/Card'; // NEW
import { DonutChart, HBarList, ColumnChart } from '../../components/charts/DashboardCharts'; // NEW

// Must match ALLOWED_CATEGORIES in backend expense.service.js
const CATEGORIES = ['utilities', 'maintenance', 'packaging', 'salaries', 'rent', 'transport', 'other'];

const MONTHS = [
  'January', 'February', 'March', 'April', 'May', 'June',
  'July', 'August', 'September', 'October', 'November', 'December',
];
const MONTH_SHORT = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

// NEW: one color per category for the charts
const CATEGORY_COLORS = {
  utilities: '#f59e0b',
  maintenance: '#64748b',
  packaging: '#1e293b',
  salaries: '#16a34a',
  rent: '#dc2626',
  transport: '#3b82f6',
  other: '#9ca3af',
};

function todayLocal() {
  return new Date().toLocaleDateString('en-CA'); // YYYY-MM-DD in local time
}

function formatDate(value) {
  if (!value) return '—';
  const d = new Date(value);
  return Number.isNaN(d.getTime()) ? '—' : d.toLocaleDateString('en-GB');
}

function formatRs(n) {
  return `Rs. ${Number(n || 0).toLocaleString()}`;
}

function errorMessage(err, fallback) {
  return err?.response?.data?.message || fallback;
}

const emptyForm = () => ({
  category: 'utilities',
  amount: '',
  description: '',
  expenseDate: todayLocal(),
  file: null,
});

export default function ExpensesPage() {
  const [expenses, setExpenses] = useState([]);
  const [loading, setLoading] = useState(true);
  const [statusFilter, setStatusFilter] = useState('all');
  const [notice, setNotice] = useState(null); // { type: 'success' | 'error', text }

  // Add-expense form
  const [showForm, setShowForm] = useState(false);
  const [form, setForm] = useState(emptyForm());
  const [preview, setPreview] = useState(null);
  const [submitting, setSubmitting] = useState(false);

  // Reject popup
  const [rejectTarget, setRejectTarget] = useState(null);
  const [rejectReason, setRejectReason] = useState('');
  const [rejecting, setRejecting] = useState(false);

  // Budget vs actual
  const now = new Date();
  const [month, setMonth] = useState(now.getMonth() + 1);
  const [year, setYear] = useState(now.getFullYear());
  const [report, setReport] = useState([]);
  const [reportLoading, setReportLoading] = useState(true);
  const [budgetForm, setBudgetForm] = useState({ category: 'utilities', amount: '' });
  const [savingBudget, setSavingBudget] = useState(false);

  useEffect(() => {
    loadExpenses();
  }, []);

  useEffect(() => {
    loadReport();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [month, year]);

  // Free the preview image from memory when it changes
  useEffect(() => {
    return () => {
      if (preview?.url) URL.revokeObjectURL(preview.url);
    };
  }, [preview]);

  async function loadExpenses() {
    setLoading(true);
    try {
      const { data } = await apiClient.get('/expenses');
      setExpenses(data.data);
    } catch (err) {
      console.error('Failed to load expenses:', err);
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to load expenses') });
    } finally {
      setLoading(false);
    }
  }

  async function loadReport() {
    setReportLoading(true);
    try {
      const { data } = await apiClient.get('/expenses/budget-vs-actual', { params: { month, year } });
      setReport(data.data);
    } catch (err) {
      console.error('Failed to load budget report:', err);
      setReport([]);
    } finally {
      setReportLoading(false);
    }
  }

  function handleFileChange(e) {
    const file = e.target.files?.[0] || null;
    setForm((f) => ({ ...f, file }));
    if (!file) {
      setPreview(null);
      return;
    }
    setPreview({
      url: URL.createObjectURL(file),
      isImage: file.type.startsWith('image/'),
      name: file.name,
    });
  }

  async function handleSubmit(e) {
    e.preventDefault();
    setNotice(null);

    if (!form.amount || Number(form.amount) <= 0) {
      setNotice({ type: 'error', text: 'Enter an amount greater than 0' });
      return;
    }

    const body = new FormData();
    body.append('category', form.category);
    body.append('amount', form.amount);
    if (form.description) body.append('description', form.description);
    if (form.expenseDate) body.append('expenseDate', form.expenseDate);
    if (form.file) body.append('receipt', form.file);

    setSubmitting(true);
    try {
      const { data } = await apiClient.post('/expenses', body, {
        headers: { 'Content-Type': 'multipart/form-data' },
      });
      const dup = data.data?.duplicate_flag;
      setNotice({
        type: dup ? 'error' : 'success',
        text: dup
          ? 'Expense saved, but it was flagged as a possible duplicate.'
          : 'Expense submitted for approval.',
      });
      setForm(emptyForm());
      setPreview(null);
      setShowForm(false);
      loadExpenses();
      loadReport();
    } catch (err) {
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to submit expense') });
    } finally {
      setSubmitting(false);
    }
  }

  async function handleApprove(id) {
    setNotice(null);
    try {
      await apiClient.patch(`/expenses/${id}/approve`);
      setNotice({ type: 'success', text: 'Expense approved.' });
    } catch (err) {
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to approve expense') });
    }
    loadExpenses();
    loadReport();
  }

  function openReject(id) {
    setRejectTarget(id);
    setRejectReason('');
  }

  async function confirmReject() {
    if (!rejectTarget) return;
    setNotice(null);
    setRejecting(true);
    try {
      await apiClient.patch(`/expenses/${rejectTarget}/reject`, { reason: rejectReason });
      setNotice({ type: 'success', text: 'Expense rejected.' });
    } catch (err) {
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to reject expense') });
    } finally {
      setRejecting(false);
      setRejectTarget(null);
      loadExpenses();
      loadReport();
    }
  }

  async function handleSaveBudget(e) {
    e.preventDefault();
    setNotice(null);
    setSavingBudget(true);
    try {
      await apiClient.post('/expenses/budget', {
        category: budgetForm.category,
        month,
        year,
        budgetedAmount: Number(budgetForm.amount),
      });
      setNotice({ type: 'success', text: 'Budget saved.' });
      setBudgetForm((b) => ({ ...b, amount: '' }));
      loadReport();
    } catch (err) {
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to save budget') });
    } finally {
      setSavingBudget(false);
    }
  }

  function statusTone(status) {
    if (status === 'approved') return 'good';
    if (status === 'rejected') return 'critical';
    return 'warn';
  }

  function budgetTone(status) {
    if (status === 'over_budget') return 'critical';
    if (status === 'within_budget') return 'good';
    return 'warn';
  }

  function budgetLabel(status) {
    if (status === 'over_budget') return 'Over budget';
    if (status === 'within_budget') return 'Within budget';
    return 'No budget set';
  }

  const pendingCount = expenses.filter((e) => e.status === 'pending').length;
  const visibleExpenses =
    statusFilter === 'all' ? expenses : expenses.filter((e) => e.status === statusFilter);

  /* ---------- NEW: derived chart data (display only) ---------- */

  const sumBy = (status) =>
    expenses.filter((e) => e.status === status).reduce((s, e) => s + (Number(e.amount) || 0), 0);

  const approvedTotal = useMemo(() => sumBy('approved'), [expenses]); // eslint-disable-line react-hooks/exhaustive-deps
  const pendingTotal = useMemo(() => sumBy('pending'), [expenses]); // eslint-disable-line react-hooks/exhaustive-deps
  const rejectedCount = useMemo(() => expenses.filter((e) => e.status === 'rejected').length, [expenses]);
  const duplicateCount = useMemo(() => expenses.filter((e) => e.duplicate_flag).length, [expenses]);

  const statusSegments = useMemo(
    () => [
      { label: 'Approved', value: expenses.filter((e) => e.status === 'approved').length, color: '#16a34a' },
      { label: 'Pending', value: pendingCount, color: '#f97316' },
      { label: 'Rejected', value: rejectedCount, color: '#dc2626' },
    ],
    [expenses, pendingCount, rejectedCount]
  );

  // Spending by category (rejected expenses are left out)
  const categoryData = useMemo(() => {
    const map = {};
    expenses.forEach((e) => {
      if (e.status === 'rejected') return;
      const c = e.category || 'other';
      map[c] = (map[c] || 0) + (Number(e.amount) || 0);
    });
    return Object.entries(map).sort((a, b) => b[1] - a[1]);
  }, [expenses]);

  const categorySegments = useMemo(
    () =>
      categoryData.slice(0, 6).map(([c, v]) => ({
        label: c.charAt(0).toUpperCase() + c.slice(1),
        value: Math.round(v),
        color: CATEGORY_COLORS[c] || '#9ca3af',
      })),
    [categoryData]
  );

  const categoryBars = useMemo(
    () =>
      categoryData.slice(0, 6).map(([c, v]) => ({
        label: c.charAt(0).toUpperCase() + c.slice(1),
        value: v,
        display: formatRs(Math.round(v)),
        color: CATEGORY_COLORS[c] || '#9ca3af',
      })),
    [categoryData]
  );

  // Last 6 months of spending (rejected left out)
  const monthlyData = useMemo(() => {
    const map = {};
    expenses.forEach((e) => {
      if (e.status === 'rejected') return;
      const d = new Date(e.expense_date || e.created_at);
      if (Number.isNaN(d.getTime())) return;
      const key = `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}`;
      if (!map[key]) map[key] = { key, label: MONTH_SHORT[d.getMonth()], value: 0 };
      map[key].value += Number(e.amount) || 0;
    });
    return Object.values(map)
      .sort((a, b) => a.key.localeCompare(b.key))
      .slice(-6)
      .map((m) => ({ label: m.label, value: Math.round(m.value) }));
  }, [expenses]);

  // Budget usage per category for the selected month
  const usagePercent = (r) => (Number(r.budgeted) > 0 ? (Number(r.actual) / Number(r.budgeted)) * 100 : null);
  const usageColor = (pct) => (pct > 100 ? '#dc2626' : pct >= 80 ? '#f97316' : '#16a34a');

  const budgetBars = useMemo(
    () =>
      report
        .map((r) => ({ r, pct: usagePercent(r) }))
        .filter((x) => x.pct !== null)
        .sort((a, b) => b.pct - a.pct)
        .map(({ r, pct }) => ({
          label: r.category.charAt(0).toUpperCase() + r.category.slice(1),
          value: pct,
          display: `${pct.toFixed(0)}% used`,
          color: usageColor(pct),
        })),
    [report]
  );

  const overBudgetCount = useMemo(() => report.filter((r) => r.status === 'over_budget').length, [report]);
  const totalBudget = useMemo(() => report.reduce((s, r) => s + (Number(r.budgeted) || 0), 0), [report]);
  const totalActual = useMemo(() => report.reduce((s, r) => s + (Number(r.actual) || 0), 0), [report]);

  const inputClass =
    'w-full rounded-lg border border-gray-200 bg-white px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent transition-shadow';
  const smallInputClass =
    'rounded-lg border border-gray-200 bg-white px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent transition-shadow';

  const filterCount = (s) => (s === 'all' ? expenses.length : expenses.filter((e) => e.status === s).length);

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between gap-4">
          <div>
            <h1 className="text-2xl font-bold text-white">Expense & Petty Cash</h1>
            <p className="text-sm text-white/50 mt-1">
              {expenses.length} expense{expenses.length !== 1 ? 's' : ''} recorded
            </p>
          </div>
          <div className="flex items-center gap-3">
            {pendingCount > 0 && (
              <div className="hidden sm:flex items-center gap-2 bg-white/10 backdrop-blur-sm px-4 py-2 rounded-xl border border-white/10">
                <span className="w-2 h-2 rounded-full bg-[#f97316] animate-pulse" />
                <span className="text-sm text-white/80">{pendingCount} pending approval</span>
              </div>
            )}
            <button
              onClick={() => setShowForm((s) => !s)}
              className="bg-gramsure-gold text-gramsure-navy text-sm font-semibold px-4 py-2 rounded-xl hover:opacity-90 active:scale-[0.98] transition-all shadow-lg shadow-black/10"
            >
              {showForm ? 'Close' : '+ Add expense'}
            </button>
          </div>
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {notice && (
          <div
            className={`rounded-xl px-4 py-3 text-sm border flex items-center justify-between gap-3 ${
              notice.type === 'error'
                ? 'bg-red-50 text-red-700 border-red-100'
                : 'bg-green-50 text-green-700 border-green-100'
            }`}
          >
            <span>{notice.text}</span>
            <button onClick={() => setNotice(null)} className="text-xs font-semibold opacity-70 hover:opacity-100 shrink-0">
              Dismiss
            </button>
          </div>
        )}

        {/* KPI cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          <Card title="Approved Spending" value={formatRs(Math.round(approvedTotal))} icon="money" subtitle="all time" />
          <Card
            title="Pending Approval"
            value={pendingCount}
            icon="alert"
            tone={pendingCount > 0 ? 'warn' : 'good'}
            subtitle={pendingCount > 0 ? formatRs(Math.round(pendingTotal)) : 'nothing waiting'}
          />
          <Card title="Rejected" value={rejectedCount} icon="shield" />
          <Card
            title="Possible Duplicates"
            value={duplicateCount}
            icon="alert"
            tone={duplicateCount > 0 ? 'critical' : 'good'}
            subtitle={duplicateCount > 0 ? 'check these receipts' : 'none flagged'}
          />
        </div>

        {/* Charts */}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          <Panel title="Spending by Category">
            {categorySegments.length === 0 ? (
              <EmptyState text="No expenses yet" />
            ) : (
              <DonutChart
                centerValue={categoryData.length}
                centerLabel="categories"
                segments={categorySegments}
                size={130}
              />
            )}
          </Panel>

          <Panel title="Monthly Spending">
            <ColumnChart data={monthlyData} />
          </Panel>

          <Panel title="Expense Status">
            {expenses.length === 0 ? (
              <EmptyState text="No expenses yet" />
            ) : (
              <DonutChart centerValue={expenses.length} centerLabel="expenses" segments={statusSegments} size={130} />
            )}
          </Panel>
        </div>

        {showForm && (
          <form
            onSubmit={handleSubmit}
            className="bg-white rounded-2xl shadow-sm border border-gray-100 p-6 grid grid-cols-1 md:grid-cols-2 gap-4"
          >
            <div className="md:col-span-2">
              <h3 className="text-sm font-semibold text-gray-800">Add a new expense</h3>
              <p className="text-xs text-gray-400 mt-0.5">It will be sent for approval after you submit it.</p>
            </div>
            <div>
              <label className="block text-xs font-semibold text-gray-500 uppercase mb-1">Category</label>
              <select
                className={inputClass}
                value={form.category}
                onChange={(e) => setForm({ ...form, category: e.target.value })}
              >
                {CATEGORIES.map((c) => (
                  <option key={c} value={c}>
                    {c.charAt(0).toUpperCase() + c.slice(1)}
                  </option>
                ))}
              </select>
            </div>
            <div>
              <label className="block text-xs font-semibold text-gray-500 uppercase mb-1">Amount (Rs.)</label>
              <input
                type="number"
                min="0"
                step="0.01"
                className={inputClass}
                value={form.amount}
                onChange={(e) => setForm({ ...form, amount: e.target.value })}
                placeholder="0.00"
                required
              />
            </div>
            <div>
              <label className="block text-xs font-semibold text-gray-500 uppercase mb-1">Expense date</label>
              <input
                type="date"
                className={inputClass}
                value={form.expenseDate}
                onChange={(e) => setForm({ ...form, expenseDate: e.target.value })}
              />
            </div>
            <div>
              <label className="block text-xs font-semibold text-gray-500 uppercase mb-1">Description</label>
              <input
                type="text"
                className={inputClass}
                value={form.description}
                onChange={(e) => setForm({ ...form, description: e.target.value })}
                placeholder="e.g. Electricity bill for October"
              />
            </div>
            <div className="md:col-span-2">
              <label className="block text-xs font-semibold text-gray-500 uppercase mb-1">
                Receipt photo (JPG, PNG, WEBP or PDF, max 5 MB)
              </label>
              <input
                type="file"
                accept="image/jpeg,image/png,image/webp,application/pdf"
                onChange={handleFileChange}
                className="block w-full text-sm text-gray-600 file:mr-3 file:rounded-lg file:border-0 file:bg-gramsure-gold/20 file:text-gramsure-navy file:px-4 file:py-2 file:text-sm file:font-semibold hover:file:bg-gramsure-gold/30 file:transition-colors"
              />
              {preview && (
                <div className="mt-3">
                  {preview.isImage ? (
                    <img src={preview.url} alt="Receipt preview" className="h-32 rounded-lg border border-gray-100 object-cover" />
                  ) : (
                    <p className="text-sm text-gray-600">Selected file: {preview.name}</p>
                  )}
                </div>
              )}
            </div>
            <div className="md:col-span-2 flex justify-end">
              <button
                type="submit"
                disabled={submitting}
                className="bg-gramsure-navy text-white text-sm font-semibold px-5 py-2.5 rounded-xl hover:bg-slate-800 disabled:opacity-50 transition-colors"
              >
                {submitting ? 'Submitting...' : 'Submit expense'}
              </button>
            </div>
          </form>
        )}

        {/* Expenses table */}
        <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
          <div className="px-5 pt-4 flex flex-wrap items-center justify-between gap-3">
            <h3 className="text-sm font-semibold text-gray-800">
              All Expenses
              <span className="ml-2 text-xs font-normal text-gray-400">{visibleExpenses.length} shown</span>
            </h3>
            <div className="inline-flex items-center gap-1 bg-gray-50 p-1 rounded-xl border border-gray-100">
              {['all', 'pending', 'approved', 'rejected'].map((s) => (
                <button
                  key={s}
                  onClick={() => setStatusFilter(s)}
                  className={`text-xs font-semibold px-3 py-1.5 rounded-lg transition-all ${
                    statusFilter === s
                      ? 'bg-gramsure-navy text-white shadow-sm'
                      : 'text-gray-500 hover:text-gray-800 hover:bg-white'
                  }`}
                >
                  {s.charAt(0).toUpperCase() + s.slice(1)}
                  <span className={`ml-1.5 ${statusFilter === s ? 'text-white/60' : 'text-gray-400'}`}>
                    {filterCount(s)}
                  </span>
                </button>
              ))}
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
              <table className="w-full text-sm mt-3">
                <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                  <tr>
                    <th className="text-left px-5 py-3 font-semibold">Date</th>
                    <th className="text-left px-5 py-3 font-semibold">Category</th>
                    <th className="text-left px-5 py-3 font-semibold">Amount</th>
                    <th className="text-left px-5 py-3 font-semibold">Receipt</th>
                    <th className="text-left px-5 py-3 font-semibold">Status</th>
                    <th className="text-left px-5 py-3 font-semibold">Duplicate?</th>
                    <th className="text-left px-5 py-3 font-semibold">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  {visibleExpenses.map((e) => (
                    <tr key={e.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                      <td className="px-5 py-3 text-gray-600">{formatDate(e.expense_date || e.created_at)}</td>
                      <td className="px-5 py-3">
                        <div className="flex items-center gap-2">
                          <span
                            className="w-2 h-2 rounded-full shrink-0"
                            style={{ backgroundColor: CATEGORY_COLORS[e.category] || '#9ca3af' }}
                          />
                          <span className="font-medium text-gray-800 capitalize">{e.category}</span>
                        </div>
                        {e.description && <div className="text-xs text-gray-400 ml-4">{e.description}</div>}
                      </td>
                      <td className="px-5 py-3 font-semibold text-gray-800">{formatRs(e.amount)}</td>
                      <td className="px-5 py-3">
                        {e.receipt_url ? (
                          <a
                            href={e.receipt_url}
                            target="_blank"
                            rel="noreferrer"
                            className="text-xs font-semibold text-blue-600 bg-blue-50 hover:bg-blue-100 px-2.5 py-1 rounded-lg transition-colors"
                          >
                            View
                          </a>
                        ) : (
                          <span className="text-gray-300">—</span>
                        )}
                      </td>
                      <td className="px-5 py-3">
                        <Badge tone={statusTone(e.status)} dot>{e.status}</Badge>
                        {e.status === 'rejected' && e.rejection_reason && (
                          <div className="text-xs text-gray-400 mt-1">{e.rejection_reason}</div>
                        )}
                      </td>
                      <td className="px-5 py-3">
                        {e.duplicate_flag ? <Badge tone="critical" dot>Duplicate</Badge> : <span className="text-gray-300">—</span>}
                      </td>
                      <td className="px-5 py-3">
                        {e.status === 'pending' && (
                          <div className="flex items-center gap-2">
                            <button
                              onClick={() => handleApprove(e.id)}
                              className="text-xs font-semibold text-[#16a34a] bg-[#16a34a]/10 hover:bg-[#16a34a]/20 px-2.5 py-1 rounded-lg transition-colors"
                            >
                              Approve
                            </button>
                            <button
                              onClick={() => openReject(e.id)}
                              className="text-xs font-semibold text-[#dc2626] bg-[#dc2626]/10 hover:bg-[#dc2626]/20 px-2.5 py-1 rounded-lg transition-colors"
                            >
                              Reject
                            </button>
                          </div>
                        )}
                      </td>
                    </tr>
                  ))}
                  {visibleExpenses.length === 0 && (
                    <tr>
                      <td colSpan={7} className="px-5 py-12 text-center text-gray-400">
                        No expenses to show.
                      </td>
                    </tr>
                  )}
                </tbody>
              </table>
            </div>
          )}
        </div>

        {/* Budget vs Actual */}
        <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
          <div className="px-5 py-4 flex flex-wrap items-center justify-between gap-3 border-b border-gray-50">
            <div>
              <h2 className="text-sm font-semibold text-gray-800">Budget vs Actual</h2>
              <p className="text-xs text-gray-400 mt-0.5">
                {MONTHS[month - 1]} {year}
                {totalBudget > 0 && ` · ${formatRs(totalActual)} spent of ${formatRs(totalBudget)}`}
                {overBudgetCount > 0 && ` · ${overBudgetCount} over budget`}
              </p>
            </div>
            <div className="flex items-center gap-2">
              <select
                className={smallInputClass}
                value={month}
                onChange={(e) => setMonth(Number(e.target.value))}
              >
                {MONTHS.map((m, i) => (
                  <option key={m} value={i + 1}>
                    {m}
                  </option>
                ))}
              </select>
              <input
                type="number"
                className={`w-24 ${smallInputClass}`}
                value={year}
                onChange={(e) => setYear(Number(e.target.value))}
              />
            </div>
          </div>

          <form onSubmit={handleSaveBudget} className="px-5 py-4 flex flex-wrap items-end gap-3 bg-gray-50/50">
            <div>
              <label className="block text-xs font-semibold text-gray-500 uppercase mb-1">Set budget for</label>
              <select
                className={smallInputClass}
                value={budgetForm.category}
                onChange={(e) => setBudgetForm({ ...budgetForm, category: e.target.value })}
              >
                {CATEGORIES.map((c) => (
                  <option key={c} value={c}>
                    {c.charAt(0).toUpperCase() + c.slice(1)}
                  </option>
                ))}
              </select>
            </div>
            <div>
              <label className="block text-xs font-semibold text-gray-500 uppercase mb-1">
                Amount for {MONTHS[month - 1]} {year}
              </label>
              <input
                type="number"
                min="0"
                step="0.01"
                className={smallInputClass}
                value={budgetForm.amount}
                onChange={(e) => setBudgetForm({ ...budgetForm, amount: e.target.value })}
                placeholder="0.00"
                required
              />
            </div>
            <button
              type="submit"
              disabled={savingBudget}
              className="bg-gramsure-navy text-white text-sm font-semibold px-4 py-2 rounded-xl hover:bg-slate-800 disabled:opacity-50 transition-colors"
            >
              {savingBudget ? 'Saving...' : 'Save budget'}
            </button>
          </form>

          {reportLoading ? (
            <div className="p-6">
              <div className="h-10 bg-gray-100 rounded-lg animate-pulse" />
            </div>
          ) : (
            <>
              {budgetBars.length > 0 && (
                <div className="px-5 pt-5">
                  <p className="text-xs font-semibold uppercase tracking-wide text-gray-400 mb-3">
                    Budget used by category
                  </p>
                  <HBarList items={budgetBars} />
                  <p className="text-[11px] text-gray-400 mt-3">
                    Green is under 80% used, orange is 80-100%, red is over budget.
                  </p>
                </div>
              )}

              <div className="overflow-x-auto mt-4">
                <table className="w-full text-sm">
                  <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                    <tr>
                      <th className="text-left px-5 py-3 font-semibold">Category</th>
                      <th className="text-left px-5 py-3 font-semibold">Budget</th>
                      <th className="text-left px-5 py-3 font-semibold">Spent (approved)</th>
                      <th className="text-left px-5 py-3 font-semibold">Pending</th>
                      <th className="text-left px-5 py-3 font-semibold">Remaining</th>
                      <th className="text-left px-5 py-3 font-semibold">Used</th>
                      <th className="text-left px-5 py-3 font-semibold">Status</th>
                    </tr>
                  </thead>
                  <tbody>
                    {report.map((r) => {
                      const pct = usagePercent(r);
                      return (
                        <tr key={r.category} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                          <td className="px-5 py-3 font-medium text-gray-800 capitalize">{r.category}</td>
                          <td className="px-5 py-3 text-gray-600">{formatRs(r.budgeted)}</td>
                          <td className="px-5 py-3 text-gray-600">{formatRs(r.actual)}</td>
                          <td className="px-5 py-3 text-gray-400">{formatRs(r.pending)}</td>
                          <td className={`px-5 py-3 font-medium ${r.variance < 0 ? 'text-[#dc2626]' : 'text-gray-600'}`}>
                            {r.budgeted > 0 ? formatRs(r.variance) : '—'}
                          </td>
                          <td className="px-5 py-3 w-40">
                            {pct === null ? (
                              <span className="text-gray-300">—</span>
                            ) : (
                              <div className="flex items-center gap-2">
                                <div className="flex-1 h-1.5 bg-gray-100 rounded-full overflow-hidden">
                                  <div
                                    className="h-full rounded-full transition-all duration-700"
                                    style={{ width: `${Math.min(pct, 100)}%`, backgroundColor: usageColor(pct) }}
                                  />
                                </div>
                                <span className="text-xs text-gray-500 w-10 text-right">{pct.toFixed(0)}%</span>
                              </div>
                            )}
                          </td>
                          <td className="px-5 py-3">
                            <Badge tone={budgetTone(r.status)} dot>{budgetLabel(r.status)}</Badge>
                          </td>
                        </tr>
                      );
                    })}
                    {report.length === 0 && (
                      <tr>
                        <td colSpan={7} className="px-5 py-10 text-center text-gray-400">
                          No budget or spending for {MONTHS[month - 1]} {year}. Set a budget above to start.
                        </td>
                      </tr>
                    )}
                  </tbody>
                </table>
              </div>
            </>
          )}
        </div>
      </div>

      {rejectTarget && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50 backdrop-blur-sm px-4">
          <div className="bg-white rounded-2xl shadow-2xl w-full max-w-md p-6">
            <h3 className="text-lg font-bold text-gray-800">Reject expense</h3>
            <p className="text-sm text-gray-500 mt-1">Add a reason so the staff member knows why (optional).</p>
            <textarea
              className="mt-4 w-full rounded-lg border border-gray-200 px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent"
              rows={3}
              value={rejectReason}
              onChange={(e) => setRejectReason(e.target.value)}
              placeholder="e.g. Receipt is unclear, please resubmit"
            />
            <div className="mt-5 flex justify-end gap-3">
              <button
                onClick={() => setRejectTarget(null)}
                className="text-sm font-semibold text-gray-500 hover:text-gray-700 px-3 py-2"
              >
                Cancel
              </button>
              <button
                onClick={confirmReject}
                disabled={rejecting}
                className="bg-[#dc2626] text-white text-sm font-semibold px-5 py-2 rounded-xl hover:bg-red-700 disabled:opacity-50 transition-colors"
              >
                {rejecting ? 'Rejecting...' : 'Reject'}
              </button>
            </div>
          </div>
        </div>
      )}
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