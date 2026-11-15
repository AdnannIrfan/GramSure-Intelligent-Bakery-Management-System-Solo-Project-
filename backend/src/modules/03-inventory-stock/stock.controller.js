const stockService = require('./stock.service');

async function getStockLevels(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const stock = await stockService.getStockLevels(branchId);
  return res.status(200).json({ success: true, data: stock });
}

async function getLowStockItems(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const items = await stockService.getLowStockItems(branchId);
  return res.status(200).json({ success: true, data: items });
}

async function increaseStock(req, res) {
  const branchId = req.body.branchId || req.user.branchId;
  const result = await stockService.increaseStock({ ...req.body, branchId });
  return res.status(201).json({ success: true, data: result });
}

async function decreaseStock(req, res) {
  const branchId = req.body.branchId || req.user.branchId;
  const result = await stockService.decreaseStock({ ...req.body, branchId });
  return res.status(200).json({ success: true, data: result });
}

module.exports = { getStockLevels, getLowStockItems, increaseStock, decreaseStock };