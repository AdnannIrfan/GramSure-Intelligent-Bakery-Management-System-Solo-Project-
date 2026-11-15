const branchService = require('./branch.service');

// Express 4 does not catch rejected promises; forward errors to the app error handler.
const wrap = (fn) => (req, res, next) => Promise.resolve(fn(req, res, next)).catch(next);

async function createBranch(req, res) {
  const ownerId = req.user.sub;
  const branch = await branchService.createBranch({ ...req.body, ownerId });
  return res.status(201).json({ success: true, data: branch });
}

async function listBranches(req, res) {
  const ownerId = req.user.sub;
  const branches = await branchService.listBranchesForOwner(ownerId);
  return res.status(200).json({ success: true, data: branches });
}

async function getBranch(req, res) {
  const branch = await branchService.getBranchById(req.params.id, req.user.sub);
  return res.status(200).json({ success: true, data: branch });
}

async function updateBranch(req, res) {
  const branch = await branchService.updateBranch(req.params.id, req.body, req.user.sub);
  return res.status(200).json({ success: true, data: branch });
}

async function deactivateBranch(req, res) {
  await branchService.deactivateBranch(req.params.id, req.user.sub);
  return res.status(204).send();
}

async function getConsolidatedDashboard(req, res) {
  const ownerId = req.user.sub;
  const data = await branchService.getConsolidatedDashboard(ownerId);
  return res.status(200).json({ success: true, data });
}

module.exports = {
  createBranch: wrap(createBranch),
  listBranches: wrap(listBranches),
  getBranch: wrap(getBranch),
  updateBranch: wrap(updateBranch),
  deactivateBranch: wrap(deactivateBranch),
  getConsolidatedDashboard: wrap(getConsolidatedDashboard),
};