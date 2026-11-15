import { useEffect, useMemo, useState } from 'react';
import apiClient from '../../services/apiClient';
import Badge from '../../components/common/Badge';
import Card from '../../components/common/Card'; // NEW
import { DonutChart, HBarList, ColumnChart } from '../../components/charts/DashboardCharts'; // NEW

/* ---------- helpers ---------- */

const MONTH_SHORT = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

const inputCls =
  'w-full bg-white border border-gray-200 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent transition-shadow';
const btnPrimary =
  'px-4 py-2 rounded-xl text-sm font-semibold bg-gramsure-navy text-white hover:bg-slate-800 active:scale-[0.98] disabled:opacity-50 transition-all';
const btnGhost =
  'px-3 py-1.5 rounded-lg text-xs font-semibold border border-gray-200 text-gray-600 bg-white hover:bg-gray-50 transition-colors';

function errMsg(err) {
  const d = err && err.response && err.response.data;
  if (d) {
    if (typeof d.message === 'string' && d.message) return d.message;
    if (typeof d.error === 'string' && d.error) return d.error;
    if (d.error && typeof d.error.message === 'string') return d.error.message;
  }
  return (err && err.message) || 'Something went wrong';
}

function parseItems(po) {
  if (!po || !po.items) return [];
  return typeof po.items === 'string' ? JSON.parse(po.items) : po.items;
}

function money(n) {
  return Number(n || 0).toLocaleString();
}

function Modal({ title, onClose, children }) {
  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50 backdrop-blur-sm p-4">
      <div className="bg-white rounded-2xl shadow-2xl w-full max-w-lg max-h-[90vh] overflow-y-auto">
        <div className="flex items-center justify-between px-5 py-4 border-b border-gray-100">
          <h3 className="font-semibold text-gray-800">{title}</h3>
          <button
            onClick={onClose}
            className="w-8 h-8 rounded-lg text-gray-400 hover:text-gray-700 hover:bg-gray-100 text-xl leading-none transition-colors"
          >
            &times;
          </button>
        </div>
        <div className="p-5">{children}</div>
      </div>
    </div>
  );
}

function Field({ label, children }) {
  return (
    <label className="block mb-3">
      <span className="block text-xs font-semibold text-gray-500 uppercase mb-1">{label}</span>
      {children}
    </label>
  );
}

function FormFooter({ error, saving, onClose, submitLabel }) {
  return (
    <>
      {error && (
        <p className="text-sm text-red-600 bg-red-50 border border-red-100 rounded-lg px-3 py-2 mb-3">{error}</p>
      )}
      <div className="flex justify-end gap-2 pt-2">
        <button type="button" onClick={onClose} className={btnGhost}>
          Cancel
        </button>
        <button type="submit" disabled={saving} className={btnPrimary}>
          {saving ? 'Saving...' : submitLabel}
        </button>
      </div>
    </>
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

/* ---------- forms ---------- */

function SupplierForm({ onClose, onDone }) {
  const [name, setName] = useState('');
  const [phone, setPhone] = useState('');
  const [notes, setNotes] = useState('');
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');

  async function submit(e) {
    e.preventDefault();
    setSaving(true);
    setError('');
    try {
      await apiClient.post('/procurement/suppliers', { name, contactPhone: phone, notes });
      onDone();
    } catch (err) {
      setError(errMsg(err));
      setSaving(false);
    }
  }

  return (
    <form onSubmit={submit}>
      <Field label="Supplier name">
        <input className={inputCls} value={name} onChange={(e) => setName(e.target.value)} required />
      </Field>
      <Field label="Phone">
        <input className={inputCls} value={phone} onChange={(e) => setPhone(e.target.value)} />
      </Field>
      <Field label="Notes (optional)">
        <input className={inputCls} value={notes} onChange={(e) => setNotes(e.target.value)} />
      </Field>
      <FormFooter error={error} saving={saving} onClose={onClose} submitLabel="Add Supplier" />
    </form>
  );
}

function PurchaseOrderForm({ suppliers, onClose, onDone }) {
  const [supplierId, setSupplierId] = useState('');
  const [items, setItems] = useState([{ materialName: '', quantity: '', unit: 'kg', unitPrice: '' }]);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');

  function updateItem(i, field, value) {
    setItems((prev) => prev.map((it, idx) => (idx === i ? { ...it, [field]: value } : it)));
  }

  async function submit(e) {
    e.preventDefault();
    setSaving(true);
    setError('');
    try {
      const cleaned = items
        .filter((it) => it.materialName.trim())
        .map((it) => ({
          materialName: it.materialName.trim(),
          quantity: Number(it.quantity),
          unit: it.unit,
          unitPrice: Number(it.unitPrice),
        }));
      if (!cleaned.length) throw new Error('Add at least one item');
      await apiClient.post('/procurement/purchase-orders', { supplierId, items: cleaned });
      onDone();
    } catch (err) {
      setError(errMsg(err));
      setSaving(false);
    }
  }

  return (
    <form onSubmit={submit}>
      <Field label="Supplier">
        <select className={inputCls} value={supplierId} onChange={(e) => setSupplierId(e.target.value)} required>
          <option value="">Select supplier...</option>
          {suppliers.map((s) => (
            <option key={s.id} value={s.id}>
              {s.name}
            </option>
          ))}
        </select>
      </Field>

      <p className="text-xs font-semibold text-gray-500 uppercase mb-1">Items</p>
      {items.map((it, i) => (
        <div key={i} className="grid grid-cols-12 gap-2 mb-2">
          <input
            className={`${inputCls} col-span-5`}
            placeholder="Material"
            value={it.materialName}
            onChange={(e) => updateItem(i, 'materialName', e.target.value)}
          />
          <input
            className={`${inputCls} col-span-2`}
            type="number"
            step="any"
            min="0"
            placeholder="Qty"
            value={it.quantity}
            onChange={(e) => updateItem(i, 'quantity', e.target.value)}
          />
          <input
            className={`${inputCls} col-span-2`}
            placeholder="Unit"
            value={it.unit}
            onChange={(e) => updateItem(i, 'unit', e.target.value)}
          />
          <input
            className={`${inputCls} col-span-3`}
            type="number"
            step="any"
            min="0"
            placeholder="Price/unit"
            value={it.unitPrice}
            onChange={(e) => updateItem(i, 'unitPrice', e.target.value)}
          />
        </div>
      ))}
      <button
        type="button"
        className={`${btnGhost} mb-4`}
        onClick={() => setItems([...items, { materialName: '', quantity: '', unit: 'kg', unitPrice: '' }])}
      >
        + Add item
      </button>

      <FormFooter error={error} saving={saving} onClose={onClose} submitLabel="Create Order" />
    </form>
  );
}

function DeliveryForm({ po, onClose, onDone }) {
  const [rows, setRows] = useState(
    parseItems(po).map((it) => ({
      materialName: it.materialName,
      unit: it.unit || '',
      orderedQty: it.quantity,
      quantity: String(it.quantity),
      unitPrice: String(it.unitPrice),
    }))
  );
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');

  function updateRow(i, field, value) {
    setRows((prev) => prev.map((r, idx) => (idx === i ? { ...r, [field]: value } : r)));
  }

  async function submit(e) {
    e.preventDefault();
    setSaving(true);
    setError('');
    try {
      const actualItems = rows.map((r) => ({
        materialName: r.materialName,
        unit: r.unit,
        quantity: Number(r.quantity),
        unitPrice: Number(r.unitPrice),
      }));
      const res = await apiClient.post(`/procurement/purchase-orders/${po.id}/delivery`, { actualItems });
      onDone(res.data.data);
    } catch (err) {
      setError(errMsg(err));
      setSaving(false);
    }
  }

  return (
    <form onSubmit={submit}>
      <p className="text-sm text-gray-500 mb-3">
        Enter the quantity actually measured on site. Differences of more than 2% raise an alert.
      </p>
      <div className="grid grid-cols-12 gap-2 text-xs font-semibold text-gray-500 uppercase mb-1">
        <span className="col-span-4">Material</span>
        <span className="col-span-2">Ordered</span>
        <span className="col-span-3">Measured</span>
        <span className="col-span-3">Price/unit</span>
      </div>
      {rows.map((r, i) => (
        <div key={i} className="grid grid-cols-12 gap-2 mb-2 items-center">
          <span className="col-span-4 text-sm text-gray-800">{r.materialName}</span>
          <span className="col-span-2 text-sm text-gray-500">
            {r.orderedQty} {r.unit}
          </span>
          <input
            className={`${inputCls} col-span-3`}
            type="number"
            step="any"
            min="0"
            value={r.quantity}
            onChange={(e) => updateRow(i, 'quantity', e.target.value)}
            required
          />
          <input
            className={`${inputCls} col-span-3`}
            type="number"
            step="any"
            min="0"
            value={r.unitPrice}
            onChange={(e) => updateRow(i, 'unitPrice', e.target.value)}
            required
          />
        </div>
      ))}
      <FormFooter error={error} saving={saving} onClose={onClose} submitLabel="Record Delivery" />
    </form>
  );
}

function InvoiceForm({ po, onClose, onDone }) {
  const [invoiceNumber, setInvoiceNumber] = useState('');
  const [invoiceDate, setInvoiceDate] = useState(new Date().toISOString().slice(0, 10));
  const [amount, setAmount] = useState('');
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');

  async function submit(e) {
    e.preventDefault();
    setSaving(true);
    setError('');
    try {
      await apiClient.post('/procurement/invoices', {
        purchaseOrderId: po.id,
        invoiceNumber,
        invoiceDate,
        amount: Number(amount),
      });
      onDone();
    } catch (err) {
      setError(errMsg(err));
      setSaving(false);
    }
  }

  return (
    <form onSubmit={submit}>
      <p className="text-sm text-gray-500 mb-3">
        Purchase order {String(po.id).slice(0, 8)} · expected Rs. {money(po.expected_total)}
      </p>
      <Field label="Supplier invoice number">
        <input className={inputCls} value={invoiceNumber} onChange={(e) => setInvoiceNumber(e.target.value)} required />
      </Field>
      <Field label="Invoice date">
        <input
          className={inputCls}
          type="date"
          value={invoiceDate}
          onChange={(e) => setInvoiceDate(e.target.value)}
          required
        />
      </Field>
      <Field label="Invoice amount (Rs.)">
        <input
          className={inputCls}
          type="number"
          step="any"
          min="0"
          value={amount}
          onChange={(e) => setAmount(e.target.value)}
          required
        />
      </Field>
      <FormFooter error={error} saving={saving} onClose={onClose} submitLabel="Save Invoice" />
    </form>
  );
}

function PayForm({ invoice, onClose, onDone }) {
  const remaining = Number(invoice.amount) - Number(invoice.amount_paid);
  const [amount, setAmount] = useState(String(remaining));
  const [method, setMethod] = useState('cash');
  const [reason, setReason] = useState('');
  const [needsOverride, setNeedsOverride] = useState(false);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');

  async function submit(e) {
    e.preventDefault();
    setSaving(true);
    setError('');
    try {
      await apiClient.post(`/procurement/invoices/${invoice.id}/pay`, {
        amount: Number(amount),
        method,
        overrideReason: reason.trim() || undefined,
      });
      onDone();
    } catch (err) {
      const msg = errMsg(err);
      if (/override reason/i.test(msg)) setNeedsOverride(true);
      setError(msg);
      setSaving(false);
    }
  }

  return (
    <form onSubmit={submit}>
      <p className="text-sm text-gray-500 mb-3">
        Invoice {invoice.invoice_number} · {invoice.supplier_name} · remaining Rs. {money(remaining)}
      </p>
      <Field label="Payment amount (Rs.)">
        <input
          className={inputCls}
          type="number"
          step="any"
          min="0"
          value={amount}
          onChange={(e) => setAmount(e.target.value)}
          required
        />
      </Field>
      <Field label="Method">
        <select className={inputCls} value={method} onChange={(e) => setMethod(e.target.value)}>
          <option value="cash">Cash</option>
          <option value="bank">Bank transfer</option>
          <option value="digital">Digital</option>
        </select>
      </Field>
      {needsOverride && (
        <Field label="Owner override reason (required to pay despite the mismatch)">
          <textarea
            className={inputCls}
            rows={3}
            value={reason}
            onChange={(e) => setReason(e.target.value)}
            placeholder="Why is this payment being approved?"
          />
        </Field>
      )}
      <FormFooter error={error} saving={saving} onClose={onClose} submitLabel="Pay" />
    </form>
  );
}

/* ---------- page ---------- */

const TABS = [
  { key: 'orders', label: 'Purchase Orders' },
  { key: 'suppliers', label: 'Suppliers' },
  { key: 'invoices', label: 'Invoices' },
  { key: 'outstanding', label: 'Outstanding Payments' },
];

export default function ProcurementPage() {
  const [suppliers, setSuppliers] = useState([]);
  const [purchaseOrders, setPurchaseOrders] = useState([]);
  const [invoices, setInvoices] = useState([]);
  const [outstanding, setOutstanding] = useState({ totalRemaining: 0, totalOverdue: 0, count: 0, items: [] });
  const [scorecards, setScorecards] = useState([]);
  const [loading, setLoading] = useState(true);
  const [tab, setTab] = useState('orders');
  const [modal, setModal] = useState(null);
  const [notice, setNotice] = useState(null);

  useEffect(() => {
    loadData();
  }, []);

  async function loadData() {
    setLoading(true);
    try {
      const results = await Promise.allSettled([
        apiClient.get('/procurement/suppliers'),
        apiClient.get('/procurement/purchase-orders'),
        apiClient.get('/procurement/invoices'),
        apiClient.get('/procurement/payments/outstanding'),
        apiClient.get('/procurement/suppliers/scorecards'),
      ]);
      const val = (r, fallback) => (r.status === 'fulfilled' ? r.value.data.data : fallback);
      setSuppliers(val(results[0], []));
      setPurchaseOrders(val(results[1], []));
      setInvoices(val(results[2], []));
      setOutstanding(val(results[3], { totalRemaining: 0, totalOverdue: 0, count: 0, items: [] }));
      setScorecards(val(results[4], []));
      results.forEach((r) => {
        if (r.status === 'rejected') console.error('Failed to load procurement data:', r.reason);
      });
    } finally {
      setLoading(false);
    }
  }

  function closeModal() {
    setModal(null);
  }

  function afterSave(text, tone = 'good') {
    closeModal();
    setNotice({ tone, text });
    loadData();
  }

  function statusTone(status) {
    if (status === 'discrepancy') return 'critical';
    if (status === 'received') return 'good';
    return 'neutral';
  }

  function validationTone(v) {
    if (v === 'mismatch') return 'critical';
    if (v === 'matched') return 'good';
    return 'neutral';
  }

  function paymentTone(s) {
    if (s === 'paid') return 'good';
    return 'neutral';
  }

  function supplierName(id) {
    const s = suppliers.find((x) => String(x.id) === String(id));
    return s ? s.name : '-';
  }

  async function changeCreditDays(s) {
    const value = window.prompt(`Credit days for ${s.name} (0 = pay on delivery)`, s.credit_days ?? 0);
    if (value === null) return;
    try {
      await apiClient.patch(`/procurement/suppliers/${s.id}/credit-days`, { creditDays: Number(value) });
      afterSave('Credit days updated');
    } catch (err) {
      setNotice({ tone: 'critical', text: errMsg(err) });
    }
  }

  /* ---------- NEW: derived chart data (display only) ---------- */

  const pendingPOs = purchaseOrders.filter((po) => po.status === 'pending').length;
  const receivedPOs = purchaseOrders.filter((po) => po.status === 'received').length;
  const discrepancyPOs = purchaseOrders.filter((po) => po.status === 'discrepancy').length;

  const poStatusSegments = useMemo(
    () => [
      { label: 'Received', value: receivedPOs, color: '#16a34a' },
      { label: 'Pending', value: pendingPOs, color: '#94a3b8' },
      { label: 'Discrepancy', value: discrepancyPOs, color: '#dc2626' },
    ],
    [receivedPOs, pendingPOs, discrepancyPOs]
  );

  const spendBySupplier = useMemo(() => {
    const map = {};
    purchaseOrders.forEach((po) => {
      const s = suppliers.find((x) => String(x.id) === String(po.supplier_id));
      const name = s ? s.name : 'Unknown';
      map[name] = (map[name] || 0) + (Number(po.expected_total) || 0);
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
  }, [purchaseOrders, suppliers]);

  const monthlyPOs = useMemo(() => {
    const map = {};
    purchaseOrders.forEach((po) => {
      const d = new Date(po.created_at);
      if (Number.isNaN(d.getTime())) return;
      const key = `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}`;
      if (!map[key]) map[key] = { key, label: MONTH_SHORT[d.getMonth()], value: 0 };
      map[key].value += Number(po.expected_total) || 0;
    });
    return Object.values(map)
      .sort((a, b) => a.key.localeCompare(b.key))
      .slice(-6)
      .map((m) => ({ label: m.label, value: Math.round(m.value) }));
  }, [purchaseOrders]);

  const supplierRows = scorecards.length ? scorecards : suppliers;

  const scoreBars = useMemo(
    () =>
      supplierRows
        .filter((s) => s.overall_score !== undefined && s.overall_score !== null)
        .sort((a, b) => Number(b.overall_score) - Number(a.overall_score))
        .slice(0, 8)
        .map((s) => {
          const score = Number(s.overall_score) || 0;
          return {
            label: s.name,
            value: score,
            display: `${score}/100`,
            color: score >= 70 ? '#16a34a' : score >= 40 ? '#f59e0b' : '#dc2626',
          };
        })
        .filter(Boolean),
    [supplierRows]
  );

  const discrepancyBars = useMemo(
    () =>
      supplierRows
        .filter((s) => Number(s.discrepancy_orders) > 0)
        .sort((a, b) => Number(b.discrepancy_orders) - Number(a.discrepancy_orders))
        .slice(0, 6)
        .map((s) => ({
          label: s.name,
          value: Number(s.discrepancy_orders),
          display: `${s.discrepancy_orders} of ${s.total_orders ?? '-'} orders`,
          color: '#dc2626',
        })),
    [supplierRows]
  );

  const paidInvoices = invoices.filter((i) => i.status === 'paid').length;
  const invoiceStatusSegments = useMemo(
    () => [
      { label: 'Paid', value: paidInvoices, color: '#16a34a' },
      { label: 'Unpaid', value: invoices.length - paidInvoices, color: '#f97316' },
    ],
    [invoices, paidInvoices]
  );

  const validationSegments = useMemo(() => {
    const matched = invoices.filter((i) => i.validation_status === 'matched').length;
    const mismatch = invoices.filter((i) => i.validation_status === 'mismatch').length;
    return [
      { label: 'Matched', value: matched, color: '#16a34a' },
      { label: 'Mismatch', value: mismatch, color: '#dc2626' },
      { label: 'Other', value: invoices.length - matched - mismatch, color: '#94a3b8' },
    ];
  }, [invoices]);

  const invoiceTotal = useMemo(() => invoices.reduce((s, i) => s + (Number(i.amount) || 0), 0), [invoices]);
  const invoicePaidTotal = useMemo(() => invoices.reduce((s, i) => s + (Number(i.amount_paid) || 0), 0), [invoices]);

  const outstandingBySupplier = useMemo(() => {
    const map = {};
    outstanding.items.forEach((it) => {
      const n = it.supplier_name || 'Unknown';
      if (!map[n]) map[n] = { total: 0, overdue: false };
      map[n].total += Number(it.remaining) || 0;
      if (it.bucket === 'overdue') map[n].overdue = true;
    });
    return Object.entries(map)
      .sort((a, b) => b[1].total - a[1].total)
      .slice(0, 6)
      .map(([label, v]) => ({
        label,
        value: v.total,
        display: `Rs. ${Math.round(v.total).toLocaleString()}`,
        color: v.overdue ? '#dc2626' : '#f59e0b',
      }));
  }, [outstanding]);

  const overdueCount = outstanding.items.filter((it) => it.bucket === 'overdue').length;
  const timingSegments = useMemo(
    () => [
      { label: 'Overdue', value: overdueCount, color: '#dc2626' },
      { label: 'Not due yet', value: outstanding.items.length - overdueCount, color: '#16a34a' },
    ],
    [outstanding, overdueCount]
  );

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between gap-4">
          <div>
            <h1 className="text-2xl font-bold text-white">Procurement & Suppliers</h1>
            <p className="text-sm text-white/50 mt-1">
              {purchaseOrders.length} purchase order{purchaseOrders.length !== 1 ? 's' : ''} · {suppliers.length} supplier
              {suppliers.length !== 1 ? 's' : ''} · Rs. {money(outstanding.totalRemaining)} outstanding
            </p>
          </div>
          {Number(outstanding.totalOverdue) > 0 && (
            <div className="hidden sm:flex items-center gap-2 bg-white/10 backdrop-blur-sm px-4 py-2 rounded-xl border border-white/10">
              <span className="w-2 h-2 rounded-full bg-[#dc2626] animate-pulse" />
              <span className="text-sm text-white/80">Rs. {money(outstanding.totalOverdue)} overdue</span>
            </div>
          )}
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {/* KPI cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-4">
          <Card title="Purchase Orders" value={purchaseOrders.length} icon="cart" />
          <Card
            title="Awaiting Delivery"
            value={pendingPOs}
            icon="box"
            tone={pendingPOs > 0 ? 'warn' : 'good'}
          />
          <Card
            title="Discrepancies"
            value={discrepancyPOs}
            icon="shield"
            tone={discrepancyPOs > 0 ? 'critical' : 'good'}
            subtitle={discrepancyPOs > 0 ? 'delivery mismatches' : 'all deliveries match'}
          />
          <Card title="Outstanding" value={`Rs. ${money(outstanding.totalRemaining)}`} icon="money" subtitle={`${outstanding.count} unpaid invoice${outstanding.count !== 1 ? 's' : ''}`} />
          <Card
            title="Overdue"
            value={`Rs. ${money(outstanding.totalOverdue)}`}
            icon="alert"
            tone={Number(outstanding.totalOverdue) > 0 ? 'critical' : 'good'}
          />
        </div>

        {/* Tabs + actions */}
        <div className="flex flex-wrap items-center justify-between gap-3">
          <div className="inline-flex bg-white rounded-2xl shadow-sm border border-gray-100 p-1 gap-1">
            {TABS.map((t) => (
              <button
                key={t.key}
                onClick={() => setTab(t.key)}
                className={`px-4 py-2 rounded-xl text-sm font-semibold transition-all ${
                  tab === t.key
                    ? 'bg-gramsure-navy text-white shadow-sm'
                    : 'text-gray-500 hover:text-gray-800 hover:bg-gray-50'
                }`}
              >
                {t.label}
              </button>
            ))}
          </div>
          <div className="flex gap-2">
            {tab === 'orders' && (
              <button className={btnPrimary} onClick={() => setModal({ type: 'po' })}>
                + New Purchase Order
              </button>
            )}
            {tab === 'suppliers' && (
              <button className={btnPrimary} onClick={() => setModal({ type: 'supplier' })}>
                + Add Supplier
              </button>
            )}
          </div>
        </div>

        {notice && (
          <div
            className={`flex items-start justify-between rounded-xl px-4 py-3 text-sm border ${
              notice.tone === 'critical'
                ? 'bg-red-50 text-red-700 border-red-100'
                : 'bg-green-50 text-green-700 border-green-100'
            }`}
          >
            <span>{notice.text}</span>
            <button className="ml-4 opacity-60 hover:opacity-100" onClick={() => setNotice(null)}>
              &times;
            </button>
          </div>
        )}

        {/* Graphs per tab */}
        {!loading && tab === 'orders' && (
          <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
            <Panel title="Order Status">
              {purchaseOrders.length === 0 ? (
                <EmptyState text="No purchase orders yet" />
              ) : (
                <DonutChart centerValue={purchaseOrders.length} centerLabel="orders" segments={poStatusSegments} size={130} />
              )}
            </Panel>
            <Panel title="Order Value by Month">
              <ColumnChart data={monthlyPOs} />
            </Panel>
            <Panel title="Order Value by Supplier">
              <HBarList items={spendBySupplier} emptyText="No purchase orders yet" />
            </Panel>
          </div>
        )}

        {!loading && tab === 'suppliers' && (
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
            <Panel title="Supplier Overall Score" right={<span className="text-[11px] text-gray-400">out of 100</span>}>
              <HBarList items={scoreBars} emptyText="No supplier scorecards yet" />
            </Panel>
            <Panel title="Delivery Discrepancies by Supplier">
              <HBarList items={discrepancyBars} emptyText="No discrepancies recorded" />
            </Panel>
          </div>
        )}

        {!loading && tab === 'invoices' && (
          <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
            <Panel title="Payment Status">
              {invoices.length === 0 ? (
                <EmptyState text="No invoices yet" />
              ) : (
                <DonutChart centerValue={invoices.length} centerLabel="invoices" segments={invoiceStatusSegments} size={130} />
              )}
            </Panel>
            <Panel title="Delivery Check Result">
              {invoices.length === 0 ? (
                <EmptyState text="No invoices yet" />
              ) : (
                <DonutChart centerValue={invoices.length} centerLabel="checked" segments={validationSegments} size={130} />
              )}
            </Panel>
            <Panel title="Invoiced vs Paid">
              <HBarList
                items={
                  invoices.length === 0
                    ? []
                    : [
                        { label: 'Total invoiced', value: invoiceTotal, display: `Rs. ${money(Math.round(invoiceTotal))}`, color: '#1e293b' },
                        { label: 'Total paid', value: invoicePaidTotal, display: `Rs. ${money(Math.round(invoicePaidTotal))}`, color: '#16a34a' },
                        {
                          label: 'Still to pay',
                          value: Math.max(invoiceTotal - invoicePaidTotal, 0),
                          display: `Rs. ${money(Math.round(Math.max(invoiceTotal - invoicePaidTotal, 0)))}`,
                          color: '#f59e0b',
                        },
                      ]
                }
                emptyText="No invoices yet"
              />
            </Panel>
          </div>
        )}

        {!loading && tab === 'outstanding' && (
          <div className="grid grid-cols-1 lg:grid-cols-5 gap-6">
            <Panel title="Outstanding by Supplier" className="lg:col-span-3">
              <HBarList items={outstandingBySupplier} emptyText="No outstanding payments" />
              <p className="text-[11px] text-gray-400 mt-4">Red bars include at least one overdue invoice.</p>
            </Panel>
            <Panel title="Payment Timing" className="lg:col-span-2">
              {outstanding.items.length === 0 ? (
                <EmptyState text="No outstanding payments" />
              ) : (
                <DonutChart centerValue={outstanding.items.length} centerLabel="unpaid" segments={timingSegments} />
              )}
            </Panel>
          </div>
        )}

        {/* Tables */}
        <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-x-auto">
          {loading ? (
            <div className="p-6 space-y-3">
              {[...Array(4)].map((_, i) => (
                <div key={i} className="h-10 bg-gray-100 rounded-lg animate-pulse" />
              ))}
            </div>
          ) : tab === 'orders' ? (
            <table className="w-full text-sm">
              <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                <tr>
                  <th className="text-left px-5 py-3 font-semibold">PO ID</th>
                  <th className="text-left px-5 py-3 font-semibold">Supplier</th>
                  <th className="text-left px-5 py-3 font-semibold">Expected Total</th>
                  <th className="text-left px-5 py-3 font-semibold">Status</th>
                  <th className="text-left px-5 py-3 font-semibold">Payment</th>
                  <th className="text-left px-5 py-3 font-semibold">Created</th>
                  <th className="text-left px-5 py-3 font-semibold">Actions</th>
                </tr>
              </thead>
              <tbody>
                {purchaseOrders.map((po) => (
                  <tr key={po.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                    <td className="px-5 py-3 font-mono text-xs text-gray-500">{String(po.id).slice(0, 8)}</td>
                    <td className="px-5 py-3 text-gray-700">{supplierName(po.supplier_id)}</td>
                    <td className="px-5 py-3 font-medium text-gray-800">Rs. {money(po.expected_total)}</td>
                    <td className="px-5 py-3">
                      <Badge tone={statusTone(po.status)} dot>{po.status}</Badge>
                    </td>
                    <td className="px-5 py-3">
                      <Badge tone={paymentTone(po.payment_status)} dot>{po.payment_status || 'unpaid'}</Badge>
                    </td>
                    <td className="px-5 py-3 text-gray-400">{new Date(po.created_at).toLocaleDateString()}</td>
                    <td className="px-5 py-3">
                      <div className="flex gap-2">
                        {po.status === 'pending' && (
                          <button className={btnGhost} onClick={() => setModal({ type: 'delivery', po })}>
                            Record Delivery
                          </button>
                        )}
                        <button className={btnGhost} onClick={() => setModal({ type: 'invoice', po })}>
                          Add Invoice
                        </button>
                      </div>
                    </td>
                  </tr>
                ))}
                {purchaseOrders.length === 0 && (
                  <tr>
                    <td colSpan={7} className="px-5 py-12 text-center text-gray-400">
                      No purchase orders yet.
                    </td>
                  </tr>
                )}
              </tbody>
            </table>
          ) : tab === 'suppliers' ? (
            <table className="w-full text-sm">
              <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                <tr>
                  <th className="text-left px-5 py-3 font-semibold">Name</th>
                  <th className="text-left px-5 py-3 font-semibold">Phone</th>
                  <th className="text-left px-5 py-3 font-semibold">Credit Days</th>
                  <th className="text-left px-5 py-3 font-semibold">Accuracy Score</th>
                  <th className="text-left px-5 py-3 font-semibold">Price Score</th>
                  <th className="text-left px-5 py-3 font-semibold">Overall</th>
                  <th className="text-left px-5 py-3 font-semibold">Orders</th>
                  <th className="text-left px-5 py-3 font-semibold">Discrepancies</th>
                </tr>
              </thead>
              <tbody>
                {(scorecards.length ? scorecards : suppliers).map((s) => (
                  <tr key={s.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                    <td className="px-5 py-3 font-medium text-gray-800">{s.name}</td>
                    <td className="px-5 py-3 text-gray-600">{s.contact_phone}</td>
                    <td className="px-5 py-3 text-gray-600">
                      {s.credit_days ?? 0}{' '}
                      <button
                        className="text-xs font-semibold text-blue-600 bg-blue-50 hover:bg-blue-100 px-2 py-0.5 rounded-md ml-1 transition-colors"
                        onClick={() => changeCreditDays(s)}
                      >
                        change
                      </button>
                    </td>
                    <td className="px-5 py-3 text-gray-600">{s.scorecard_accuracy}/100</td>
                    <td className="px-5 py-3 text-gray-600">{s.scorecard_price}/100</td>
                    <td className="px-5 py-3 font-semibold text-gray-800">
                      {s.overall_score !== undefined ? `${s.overall_score}/100` : '-'}
                    </td>
                    <td className="px-5 py-3 text-gray-600">{s.total_orders ?? '-'}</td>
                    <td className="px-5 py-3 text-gray-600">{s.discrepancy_orders ?? '-'}</td>
                  </tr>
                ))}
                {suppliers.length === 0 && (
                  <tr>
                    <td colSpan={8} className="px-5 py-12 text-center text-gray-400">
                      No suppliers yet.
                    </td>
                  </tr>
                )}
              </tbody>
            </table>
          ) : tab === 'invoices' ? (
            <table className="w-full text-sm">
              <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                <tr>
                  <th className="text-left px-5 py-3 font-semibold">Invoice #</th>
                  <th className="text-left px-5 py-3 font-semibold">Supplier</th>
                  <th className="text-left px-5 py-3 font-semibold">Amount</th>
                  <th className="text-left px-5 py-3 font-semibold">Paid</th>
                  <th className="text-left px-5 py-3 font-semibold">Due</th>
                  <th className="text-left px-5 py-3 font-semibold">Delivery Check</th>
                  <th className="text-left px-5 py-3 font-semibold">Status</th>
                  <th className="text-left px-5 py-3 font-semibold">Actions</th>
                </tr>
              </thead>
              <tbody>
                {invoices.map((inv) => (
                  <tr key={inv.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                    <td className="px-5 py-3 font-medium text-gray-800">{inv.invoice_number}</td>
                    <td className="px-5 py-3 text-gray-700">{inv.supplier_name}</td>
                    <td className="px-5 py-3 text-gray-800">Rs. {money(inv.amount)}</td>
                    <td className="px-5 py-3 text-gray-600">Rs. {money(inv.amount_paid)}</td>
                    <td className="px-5 py-3 text-gray-500">{new Date(inv.due_date).toLocaleDateString()}</td>
                    <td className="px-5 py-3">
                      <span title={inv.validation_note || ''}>
                        <Badge tone={validationTone(inv.validation_status)} dot>{inv.validation_status}</Badge>
                      </span>
                    </td>
                    <td className="px-5 py-3">
                      <Badge tone={paymentTone(inv.status)} dot>{inv.status}</Badge>
                    </td>
                    <td className="px-5 py-3">
                      {inv.status !== 'paid' && (
                        <button className={btnGhost} onClick={() => setModal({ type: 'pay', invoice: inv })}>
                          Pay
                        </button>
                      )}
                    </td>
                  </tr>
                ))}
                {invoices.length === 0 && (
                  <tr>
                    <td colSpan={8} className="px-5 py-12 text-center text-gray-400">
                      No supplier invoices yet.
                    </td>
                  </tr>
                )}
              </tbody>
            </table>
          ) : (
            <table className="w-full text-sm">
              <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                <tr>
                  <th className="text-left px-5 py-3 font-semibold">Supplier</th>
                  <th className="text-left px-5 py-3 font-semibold">Invoice #</th>
                  <th className="text-left px-5 py-3 font-semibold">Remaining</th>
                  <th className="text-left px-5 py-3 font-semibold">Due Date</th>
                  <th className="text-left px-5 py-3 font-semibold">Timing</th>
                </tr>
              </thead>
              <tbody>
                {outstanding.items.map((it) => (
                  <tr key={it.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                    <td className="px-5 py-3 text-gray-700">{it.supplier_name}</td>
                    <td className="px-5 py-3 font-medium text-gray-800">{it.invoice_number}</td>
                    <td className="px-5 py-3 text-gray-800">Rs. {money(it.remaining)}</td>
                    <td className="px-5 py-3 text-gray-500">{new Date(it.due_date).toLocaleDateString()}</td>
                    <td className="px-5 py-3">
                      <Badge tone={it.bucket === 'overdue' ? 'critical' : 'neutral'} dot>
                        {it.days_overdue > 0
                          ? `${it.days_overdue} day(s) overdue`
                          : it.days_overdue === 0
                          ? 'due today'
                          : `due in ${-it.days_overdue} day(s)`}
                      </Badge>
                    </td>
                  </tr>
                ))}
                {outstanding.items.length === 0 && (
                  <tr>
                    <td colSpan={5} className="px-5 py-12 text-center text-gray-400">
                      No outstanding payments.
                    </td>
                  </tr>
                )}
              </tbody>
            </table>
          )}
        </div>
      </div>

      {modal && modal.type === 'supplier' && (
        <Modal title="Add Supplier" onClose={closeModal}>
          <SupplierForm onClose={closeModal} onDone={() => afterSave('Supplier added')} />
        </Modal>
      )}
      {modal && modal.type === 'po' && (
        <Modal title="New Purchase Order" onClose={closeModal}>
          <PurchaseOrderForm
            suppliers={suppliers}
            onClose={closeModal}
            onDone={() => afterSave('Purchase order created')}
          />
        </Modal>
      )}
      {modal && modal.type === 'delivery' && (
        <Modal title="Record Delivery" onClose={closeModal}>
          <DeliveryForm
            po={modal.po}
            onClose={closeModal}
            onDone={(result) =>
              result && result.discrepancyFlag
                ? afterSave('Delivery recorded. DISCREPANCY detected, the owner has been alerted.', 'critical')
                : afterSave('Delivery recorded. Quantities match the order and stock was updated.')
            }
          />
        </Modal>
      )}
      {modal && modal.type === 'invoice' && (
        <Modal title="Add Supplier Invoice" onClose={closeModal}>
          <InvoiceForm po={modal.po} onClose={closeModal} onDone={() => afterSave('Invoice saved')} />
        </Modal>
      )}
      {modal && modal.type === 'pay' && (
        <Modal title="Pay Supplier Invoice" onClose={closeModal}>
          <PayForm invoice={modal.invoice} onClose={closeModal} onDone={() => afterSave('Payment recorded')} />
        </Modal>
      )}
    </div>
  );
}