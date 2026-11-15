const supplierModel = require('./supplier.model');
const stockService = require('../03-inventory-stock/stock.service');
const { sendWhatsAppMessage } = require('../../config/twilio');

const DISCREPANCY_THRESHOLD_PERCENT = 2.0;
const PRICE_TOLERANCE_PERCENT = 2.0;   // NEW
const AMOUNT_TOLERANCE_PERCENT = 2.0;  // NEW

function httpError(message, statusCode) { // NEW
  const err = new Error(message);
  err.statusCode = statusCode;
  return err;
}

async function addSupplier(data) {
  if (!data.name || !data.branchId) {
    const err = new Error('name and branchId are required');
    err.statusCode = 400;
    throw err;
  }
  return supplierModel.createSupplier(data);
}

async function listSuppliers(branchId) {
  return supplierModel.findAllSuppliers(branchId);
}

async function createPurchaseOrder(data) {
  if (!data.supplierId || !data.items || !data.items.length) {
    const err = new Error('supplierId and at least one item are required');
    err.statusCode = 400;
    throw err;
  }
  const expectedTotal = data.items.reduce((sum, item) => sum + item.quantity * item.unitPrice, 0);
  return supplierModel.createPurchaseOrder({ ...data, expectedTotal });
}

async function listPurchaseOrders(branchId, status) {
  return supplierModel.findAllPurchaseOrders(branchId, status);
}

// NEW: price-consistency score (-5 if charged >2% above ordered price, +1 if fine)
function computePriceDelta(orderedItems, actualItems) {
  const details = [];
  let compared = 0;
  let overcharged = false;
  for (const ordered of orderedItems) {
    const actual = actualItems.find((a) => a.materialName === ordered.materialName);
    if (!actual) continue;
    const orderedPrice = Number(ordered.unitPrice);
    const actualPrice = Number(actual.unitPrice);
    if (!orderedPrice || Number.isNaN(actualPrice)) continue;
    compared += 1;
    const variance = ((actualPrice - orderedPrice) / orderedPrice) * 100;
    if (variance > PRICE_TOLERANCE_PERCENT) {
      overcharged = true;
      details.push(`${ordered.materialName}: ordered price ${orderedPrice}, charged ${actualPrice} (+${variance.toFixed(1)}%)`);
    }
  }
  if (compared === 0) return { priceDelta: 0, details };
  return { priceDelta: overcharged ? -5 : 1, details };
}

async function recordDelivery({ purchaseOrderId, actualItems, recordedBy }) {
  const po = await supplierModel.findPurchaseOrderById(purchaseOrderId);
  if (!po) {
    const err = new Error('Purchase order not found');
    err.statusCode = 404;
    throw err;
  }

  // NEW: stop the same delivery being recorded twice (stock was being added twice)
  if (po.status !== 'pending') {
    throw httpError(`Delivery already recorded for this purchase order (status: ${po.status})`, 409);
  }
  if (!Array.isArray(actualItems) || !actualItems.length) {
    throw httpError('actualItems must be a non-empty array', 400);
  }

  const orderedItems = typeof po.items === 'string' ? JSON.parse(po.items) : po.items;
  let discrepancyFlag = false;
  let maxVariancePercent = 0;
  const discrepancyDetails = [];

  for (const orderedItem of orderedItems) {
    const actualItem = actualItems.find((a) => a.materialName === orderedItem.materialName);

    // CHANGED: an ordered item that was not delivered at all is now a discrepancy
    if (!actualItem) {
      discrepancyFlag = true;
      discrepancyDetails.push(`${orderedItem.materialName}: ordered ${orderedItem.quantity}, NOT delivered`);
      maxVariancePercent = 100;
      continue;
    }

    const variancePercent =
      ((actualItem.quantity - orderedItem.quantity) / orderedItem.quantity) * 100;

    if (Math.abs(variancePercent) > DISCREPANCY_THRESHOLD_PERCENT) {
      discrepancyFlag = true;
      discrepancyDetails.push(
        `${orderedItem.materialName}: ordered ${orderedItem.quantity}, received ${actualItem.quantity} (${variancePercent.toFixed(1)}%)`
      );
    }
    maxVariancePercent = Math.max(maxVariancePercent, Math.abs(variancePercent));
  }

  const actualTotal = actualItems.reduce((sum, item) => sum + item.quantity * item.unitPrice, 0);

  const delivery = await supplierModel.recordDelivery({
    purchaseOrderId,
    actualItems,
    actualTotal,
    discrepancyFlag,
    recordedBy,
  });

  await supplierModel.updatePurchaseOrderStatus(purchaseOrderId, discrepancyFlag ? 'discrepancy' : 'received');

  // CHANGED: price score now works, and every score change is logged
  const { priceDelta, details: priceDetails } = computePriceDelta(orderedItems, actualItems);
  const accuracyDelta = discrepancyFlag ? -5 : 1;
  await supplierModel.updateSupplierScorecard(po.supplier_id, { accuracyDelta, priceDelta });
  await supplierModel.logScorecardChange({
    supplierId: po.supplier_id,
    purchaseOrderId,
    accuracyDelta,
    priceDelta,
    reason: [...discrepancyDetails, ...priceDetails].join('; ') || 'Delivery matched order',
  });

  for (const item of actualItems) {
    await stockService.increaseStock({
      materialName: item.materialName,
      quantity: item.quantity,
      branchId: po.branch_id,
      unit: item.unit,
    });
  }

  // CHANGED: a WhatsApp failure no longer breaks a delivery that is already saved
  if (discrepancyFlag) {
    try {
      await sendWhatsAppMessage(
        `⚠️ Delivery discrepancy for PO #${purchaseOrderId}:\n${discrepancyDetails.join('\n')}`
      );
    } catch (e) {
      console.error('WhatsApp alert failed (delivery discrepancy):', e.message);
    }
  }

  return { delivery, discrepancyFlag, maxVariancePercent };
}

/* ================= NEW IN MODULE 2 ================= */

function isOwner(user) { return user && user.role === 'owner'; }

function assertBranchAccess(user, branchId) {
  if (isOwner(user)) return;
  if (String(branchId) !== String(user.branchId)) throw httpError('You do not have access to this branch', 403);
}

function addDays(dateStr, days) {
  const d = new Date(dateStr);
  if (Number.isNaN(d.getTime())) throw httpError('Invalid invoice date', 400);
  d.setUTCDate(d.getUTCDate() + days);
  return d.toISOString().slice(0, 10);
}

function evaluateInvoice({ invoiceAmount, po, delivery }) {
  if (!delivery) return { status: 'pending', note: 'Delivery not yet recorded for this purchase order' };
  if (po.status === 'discrepancy' || delivery.discrepancy_flag) {
    return { status: 'mismatch', note: 'Delivered quantities differed from the purchase order' };
  }
  const deliveredTotal = Number(delivery.actual_total);
  if (deliveredTotal > 0) {
    const variance = ((Number(invoiceAmount) - deliveredTotal) / deliveredTotal) * 100;
    if (Math.abs(variance) > AMOUNT_TOLERANCE_PERCENT) {
      return { status: 'mismatch', note: `Invoice ${invoiceAmount} differs from delivered value ${deliveredTotal} (${variance.toFixed(1)}%)` };
    }
  }
  return { status: 'matched', note: null };
}

async function createInvoice({ purchaseOrderId, invoiceNumber, invoiceDate, amount, photoUrl, user }) {
  const amt = Number(amount);
  if (!purchaseOrderId || !invoiceNumber || !invoiceDate || !(amt > 0)) {
    throw httpError('purchaseOrderId, invoiceNumber, invoiceDate and a positive amount are required', 400);
  }
  const po = await supplierModel.findPurchaseOrderById(purchaseOrderId);
  if (!po) throw httpError('Purchase order not found', 404);
  assertBranchAccess(user, po.branch_id);

  const supplier = await supplierModel.findSupplierById(po.supplier_id);
  const dueDate = addDays(invoiceDate, Number(supplier && supplier.credit_days) || 0);
  const delivery = await supplierModel.findLatestDeliveryByPo(po.id);
  const validation = evaluateInvoice({ invoiceAmount: amt, po, delivery });

  try {
    const invoice = await supplierModel.createInvoice({
      purchaseOrderId: po.id,
      supplierId: po.supplier_id,
      branchId: po.branch_id,
      invoiceNumber: String(invoiceNumber).trim(),
      invoiceDate,
      dueDate,
      amount: amt,
      photoUrl,
      validationStatus: validation.status,
      validationNote: validation.note,
      createdBy: user.sub,
    });
    if (validation.status === 'mismatch') {
      try {
        await sendWhatsAppMessage(`⚠️ Invoice ${invoice.invoice_number} does not match the delivery: ${validation.note}. Payment is blocked until the owner reviews it.`);
      } catch (e) {
        console.error('WhatsApp alert failed (invoice mismatch):', e.message);
      }
    }
    return invoice;
  } catch (err) {
    if (err.code === '23505') throw httpError('This supplier invoice number was already entered (duplicate invoice)', 409);
    throw err;
  }
}

async function listInvoices(branchId, status) {
  return supplierModel.findInvoices(branchId, status);
}

async function payInvoice({ invoiceId, amount, method, overrideReason, user }) {
  const invoice = await supplierModel.findInvoiceById(invoiceId);
  if (!invoice) throw httpError('Invoice not found', 404);
  assertBranchAccess(user, invoice.branch_id);
  if (invoice.status === 'paid') throw httpError('Invoice is already fully paid', 409);

  const po = await supplierModel.findPurchaseOrderById(invoice.purchase_order_id);
  const delivery = await supplierModel.findLatestDeliveryByPo(invoice.purchase_order_id);

  if (!delivery || !po || po.status === 'pending') {
    throw httpError('Payment blocked: delivery has not been recorded and validated for this purchase order', 409);
  }

  const validation = evaluateInvoice({ invoiceAmount: invoice.amount, po, delivery });
  if (validation.status === 'mismatch') {
    const canOverride = isOwner(user) && overrideReason && String(overrideReason).trim().length >= 5;
    if (!canOverride) {
      throw httpError(`Payment blocked: ${validation.note}. Only the owner can approve this payment, with an override reason.`, isOwner(user) ? 409 : 403);
    }
  }

  const remaining = Number(invoice.amount) - Number(invoice.amount_paid);
  const payAmount = amount === undefined || amount === null || amount === '' ? remaining : Number(amount);
  if (!(payAmount > 0)) throw httpError('Payment amount must be greater than zero', 400);
  if (payAmount > remaining + 0.0001) throw httpError(`Payment exceeds the remaining balance (${remaining})`, 400);

  const payMethod = ['cash', 'bank', 'digital'].includes(method) ? method : 'cash';

  const updated = await supplierModel.recordPayment({
    invoiceId: invoice.id,
    amount: payAmount,
    method: payMethod,
    overrideReason: validation.status === 'mismatch' ? String(overrideReason).trim() : null,
    paidBy: user.sub,
  });
  if (!updated) throw httpError('Payment rejected (balance changed, please retry)', 409);

  await supplierModel.refreshPurchaseOrderPaymentStatus(invoice.purchase_order_id);
  return updated;
}

async function getOutstanding(branchId) {
  const rows = await supplierModel.findOutstanding(branchId);
  const items = rows.map((r) => {
    const late = Number(r.days_overdue);
    return { ...r, days_overdue: late, bucket: late > 0 ? 'overdue' : late >= -3 ? 'due_soon' : 'upcoming' };
  });
  const totalRemaining = items.reduce((s, r) => s + Number(r.remaining), 0);
  const totalOverdue = items.filter((r) => r.bucket === 'overdue').reduce((s, r) => s + Number(r.remaining), 0);
  return { totalRemaining, totalOverdue, count: items.length, items };
}

async function setCreditDays({ supplierId, creditDays, user }) {
  const days = Number(creditDays);
  if (!Number.isInteger(days) || days < 0 || days > 365) throw httpError('creditDays must be a whole number between 0 and 365', 400);
  const supplier = await supplierModel.findSupplierById(supplierId);
  if (!supplier) throw httpError('Supplier not found', 404);
  assertBranchAccess(user, supplier.branch_id);
  return supplierModel.setCreditDays(supplierId, days);
}

async function getScorecards(branchId) {
  return supplierModel.findScorecards(branchId);
}

async function getScorecardHistory({ supplierId, user }) {
  const supplier = await supplierModel.findSupplierById(supplierId);
  if (!supplier) throw httpError('Supplier not found', 404);
  assertBranchAccess(user, supplier.branch_id);
  return supplierModel.findScorecardHistory(supplierId);
}

// Daily 9:00 (Asia/Karachi) WhatsApp reminder for overdue / due-in-2-days invoices
async function runPaymentReminders() {
  const branchIds = await supplierModel.findBranchesWithUnpaidInvoices();
  for (const branchId of branchIds) {
    try {
      const due = await supplierModel.findDueSoon(branchId, 2);
      if (!due.length) continue;
      const lines = due.map((d) => {
        const late = Number(d.days_overdue);
        const when = late > 0 ? `${late} day(s) OVERDUE` : late === 0 ? 'due today' : `due in ${-late} day(s)`;
        return `• ${d.supplier_name} - invoice ${d.invoice_number}: ${d.remaining} (${when})`;
      });
      await sendWhatsAppMessage(`💳 Supplier payments needing attention:\n${lines.join('\n')}`);
    } catch (err) {
      console.error(`Payment reminder failed for branch ${branchId}:`, err.message);
    }
  }
}

let lastReminderDate = null;
function startPaymentReminderJob() {
  const timer = setInterval(async () => {
    const now = new Date();
    const hour = now.toLocaleString('en-GB', { timeZone: 'Asia/Karachi', hour: '2-digit', hour12: false });
    const today = now.toLocaleDateString('en-CA', { timeZone: 'Asia/Karachi' });
    if (hour === '09' && lastReminderDate !== today) {
      lastReminderDate = today;
      try { await runPaymentReminders(); } catch (e) { console.error('Payment reminder job error:', e.message); }
    }
  }, 30 * 60 * 1000);
  timer.unref();
}

module.exports = {
  addSupplier,
  listSuppliers,
  createPurchaseOrder,
  listPurchaseOrders,
  recordDelivery,
  createInvoice,
  listInvoices,
  payInvoice,
  getOutstanding,
  setCreditDays,
  getScorecards,
  getScorecardHistory,
  runPaymentReminders,
  startPaymentReminderJob,
};