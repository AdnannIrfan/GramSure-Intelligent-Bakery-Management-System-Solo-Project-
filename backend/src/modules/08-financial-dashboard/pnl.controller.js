const pnlService = require('./pnl.service');

function getLocalDateString(date = new Date()) {
  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, '0');
  const day = String(date.getDate()).padStart(2, '0');
  return `${year}-${month}-${day}`;
}

async function getTodayPnL(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const pnl = await pnlService.getPnLForDate(branchId, getLocalDateString());
  return res.status(200).json({ success: true, data: pnl });
}

async function getPnLForDate(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const pnl = await pnlService.getPnLForDate(branchId, req.params.date);
  return res.status(200).json({ success: true, data: pnl });
}

async function getPnLRange(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const pnl = await pnlService.getPnLForRange(branchId, req.query.fromDate, req.query.toDate);
  return res.status(200).json({ success: true, data: pnl });
}

async function getProductMargins(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const margins = await pnlService.getProductWiseMargins(branchId);
  return res.status(200).json({ success: true, data: margins });
}

module.exports = { getTodayPnL, getPnLForDate, getPnLRange, getProductMargins };