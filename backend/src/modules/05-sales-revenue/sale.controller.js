const saleService = require('./sale.service');

async function recordSale(req, res) {
  const branchId = req.body.branchId || req.user.branchId;
  const staffId = req.body.staffId || req.user.sub;
  const sale = await saleService.recordSale({ ...req.body, branchId, staffId });
  return res.status(201).json({ success: true, data: sale });
}

async function getSales(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const sales = await saleService.getSales(branchId, {
    fromDate: req.query.fromDate,
    toDate: req.query.toDate,
  });
  return res.status(200).json({ success: true, data: sales });
}

async function reconcileShift(req, res) {
  const branchId = req.body.branchId || req.user.branchId;
  const staffId = req.body.staffId || req.user.sub;
  const result = await saleService.reconcileShift({ ...req.body, branchId, staffId });
  return res.status(201).json({ success: true, data: result });
}

async function getCashierPerformance(req, res) {
  const staffId = req.params.staffId;
  const history = await saleService.getCashierPerformance(staffId, req.query.limit ? parseInt(req.query.limit, 10) : 30);
  return res.status(200).json({ success: true, data: history });
}

module.exports = { recordSale, getSales, reconcileShift, getCashierPerformance };