const procurementService = require('./procurement.service');

async function addSupplier(req, res) {
  const branchId = req.body.branchId || req.user.branchId;
  const supplier = await procurementService.addSupplier({ ...req.body, branchId });
  return res.status(201).json({ success: true, data: supplier });
}

async function listSuppliers(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const suppliers = await procurementService.listSuppliers(branchId);
  return res.status(200).json({ success: true, data: suppliers });
}

async function createPurchaseOrder(req, res) {
  const branchId = req.body.branchId || req.user.branchId;
  const po = await procurementService.createPurchaseOrder({
    ...req.body,
    branchId,
    createdBy: req.user.sub,
  });
  return res.status(201).json({ success: true, data: po });
}

async function listPurchaseOrders(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const pos = await procurementService.listPurchaseOrders(branchId, req.query.status);
  return res.status(200).json({ success: true, data: pos });
}

async function recordDelivery(req, res) {
  const result = await procurementService.recordDelivery({
    purchaseOrderId: req.params.id,
    actualItems: req.body.actualItems,
    recordedBy: req.user.sub,
  });
  return res.status(201).json({ success: true, data: result });
}

/* ================= NEW IN MODULE 2 ================= */

// Owner can view any branch; everyone else only their own branch
function resolveBranch(req) {
  if (req.user.role === 'owner') return req.query.branchId || req.user.branchId;
  return req.user.branchId;
}

// Passes errors to your error handler even without express-async-errors
const wrap = (fn) => (req, res, next) => Promise.resolve(fn(req, res, next)).catch(next);

const createInvoice = wrap(async (req, res) => {
  const invoice = await procurementService.createInvoice({ ...req.body, user: req.user });
  res.status(201).json({ success: true, data: invoice });
});

const listInvoices = wrap(async (req, res) => {
  const data = await procurementService.listInvoices(resolveBranch(req), req.query.status);
  res.status(200).json({ success: true, data });
});

const payInvoice = wrap(async (req, res) => {
  const data = await procurementService.payInvoice({
    invoiceId: req.params.id,
    amount: req.body.amount,
    method: req.body.method,
    overrideReason: req.body.overrideReason,
    user: req.user,
  });
  res.status(200).json({ success: true, data });
});

const getOutstanding = wrap(async (req, res) => {
  const data = await procurementService.getOutstanding(resolveBranch(req));
  res.status(200).json({ success: true, data });
});

const getScorecards = wrap(async (req, res) => {
  const data = await procurementService.getScorecards(resolveBranch(req));
  res.status(200).json({ success: true, data });
});

const getScorecardHistory = wrap(async (req, res) => {
  const data = await procurementService.getScorecardHistory({ supplierId: req.params.id, user: req.user });
  res.status(200).json({ success: true, data });
});

const setCreditDays = wrap(async (req, res) => {
  const data = await procurementService.setCreditDays({
    supplierId: req.params.id,
    creditDays: req.body.creditDays,
    user: req.user,
  });
  res.status(200).json({ success: true, data });
});

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
  getScorecards,
  getScorecardHistory,
  setCreditDays,
};