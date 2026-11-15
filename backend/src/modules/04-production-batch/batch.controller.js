const batchService = require('./batch.service');

async function createBatch(req, res) {
  const branchId = req.body.branchId || req.user.branchId;
  const staffId = req.body.staffId || req.user.sub;
  const batch = await batchService.logProductionBatch({ ...req.body, branchId, staffId });
  return res.status(201).json({ success: true, data: batch });
}

async function getBatches(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const batches = await batchService.getBatches(branchId, {
    staffId: req.query.staffId,
    fraudFlag: req.query.fraudFlag !== undefined ? req.query.fraudFlag === 'true' : undefined,
    fromDate: req.query.fromDate,
    toDate: req.query.toDate,
  });
  return res.status(200).json({ success: true, data: batches });
}

async function getBatch(req, res) {
  const batch = await batchService.getBatchById(req.params.id);
  return res.status(200).json({ success: true, data: batch });
}

async function getYieldRate(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const rate = await batchService.getYieldRate(branchId, req.query.days ? parseInt(req.query.days, 10) : 30);
  return res.status(200).json({ success: true, data: { yieldRate: rate } });
}

module.exports = { createBatch, getBatches, getBatch, getYieldRate };