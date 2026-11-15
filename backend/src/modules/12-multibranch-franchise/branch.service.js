const branchModel = require('./branch.model');

const UUID_RE = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

function httpError(statusCode, message) {
  const err = new Error(message);
  err.statusCode = statusCode;
  return err;
}

function assertUuid(id) {
  if (!UUID_RE.test(String(id || ''))) throw httpError(400, 'Invalid branch id');
}

async function createBranch({ name, address, ownerId }) {
  if (!name || !String(name).trim() || !ownerId) {
    throw httpError(400, 'name and ownerId are required');
  }
  return branchModel.create({ name: String(name).trim(), address, ownerId });
}

async function listBranchesForOwner(ownerId) {
  return branchModel.findAllByOwner(ownerId);
}

// ownerId is optional for backward compatibility; the controller always passes it.
async function getBranchById(id, ownerId) {
  assertUuid(id);
  const branch = ownerId ? await branchModel.findByIdForOwner(id, ownerId) : await branchModel.findById(id);
  if (!branch) throw httpError(404, 'Branch not found');
  return branch;
}

async function updateBranch(id, updates, ownerId) {
  assertUuid(id);
  const { name, address } = updates || {};
  if (name !== undefined && !String(name).trim()) throw httpError(400, 'name cannot be empty');
  const clean = { name: name !== undefined ? String(name).trim() : undefined, address };
  const branch = ownerId
    ? await branchModel.updateForOwner(id, ownerId, clean)
    : await branchModel.update(id, clean);
  if (!branch) throw httpError(404, 'Branch not found');
  return branch;
}

async function deactivateBranch(id, ownerId) {
  assertUuid(id);
  const branch = ownerId ? await branchModel.findByIdForOwner(id, ownerId) : await branchModel.findById(id);
  if (!branch) throw httpError(404, 'Branch not found');
  if (await branchModel.countOpenTransfers(id) > 0) {
    throw httpError(409, 'Branch has pending stock transfers. Complete or cancel them first.');
  }
  if (ownerId) await branchModel.deactivateForOwner(id, ownerId);
  else await branchModel.deactivate(id);
}

// ---------- consolidated dashboard + cross-branch benchmarking ----------

const UNDERPERFORMANCE_THRESHOLD = 0.7;   // revenue below 70% of average
const VARIANCE_TOLERANCE = 2;             // % (project tolerance band)
const OUTLIER_FACTOR = 1.5;               // vs. average of all branches
const SELL_THROUGH_FACTOR = 0.8;          // sold/produced below 80% of average ratio

const num = (v) => (v === null || v === undefined ? 0 : parseFloat(v));
const round1 = (n) => Math.round(n * 10) / 10;

function scoreBranch(b, maxRevenue) {
  const revenueScore = maxRevenue > 0 ? (b.totalRevenue / maxRevenue) * 100 : 0;
  const varianceScore = b.avgVariancePercent === null
    ? 50 // no production data: neutral
    : Math.max(0, 100 - (b.avgVariancePercent / 10) * 100);
  const fraudScore = Math.max(0, 100 - b.openFraudFlags * 10);
  return round1(revenueScore * 0.5 + varianceScore * 0.25 + fraudScore * 0.25);
}

async function getConsolidatedDashboard(ownerId) {
  const rows = await branchModel.getConsolidatedPerformance(ownerId);

  if (rows.length === 0) {
    return {
      branches: [],
      totals: { branchCount: 0, totalRevenue: 0, totalOpenFraudFlags: 0 },
      averageRevenue: 0,
      underperformingBranches: [],
      flaggedBranches: [],
    };
  }

  const branches = rows.map((b) => ({
    branchId: b.branch_id,
    branchName: b.branch_name,
    totalRevenue: num(b.total_revenue),
    openFraudFlags: parseInt(b.open_fraud_flags, 10) || 0,
    unitsSold: num(b.units_sold),
    unitsProduced: num(b.units_produced),
    batchCount: parseInt(b.batch_count, 10) || 0,
    flaggedBatches: parseInt(b.flagged_batches, 10) || 0,
    avgVariancePercent: b.avg_abs_variance === null ? null : round1(num(b.avg_abs_variance)),
  }));

  const n = branches.length;
  const totalRevenue = branches.reduce((s, b) => s + b.totalRevenue, 0);
  const totalOpenFraudFlags = branches.reduce((s, b) => s + b.openFraudFlags, 0);
  const avgRevenue = totalRevenue / n;
  const avgFlags = totalOpenFraudFlags / n;
  const maxRevenue = Math.max(...branches.map((b) => b.totalRevenue));

  const withVar = branches.filter((b) => b.avgVariancePercent !== null);
  const avgVariance = withVar.length
    ? withVar.reduce((s, b) => s + b.avgVariancePercent, 0) / withVar.length : 0;

  branches.forEach((b) => {
    b.sellThroughRatio = b.unitsProduced > 0 ? b.unitsSold / b.unitsProduced : null;
  });
  const withRatio = branches.filter((b) => b.sellThroughRatio !== null);
  const avgRatio = withRatio.length
    ? withRatio.reduce((s, b) => s + b.sellThroughRatio, 0) / withRatio.length : 0;

  branches.forEach((b) => {
    b.performanceScore = scoreBranch(b, maxRevenue);
    b.anomalies = [];
    if (n > 1) {
      if (b.totalRevenue < avgRevenue * UNDERPERFORMANCE_THRESHOLD) {
        b.anomalies.push('LOW_REVENUE');
      }
      if (b.avgVariancePercent !== null && b.avgVariancePercent > VARIANCE_TOLERANCE
          && b.avgVariancePercent > avgVariance * OUTLIER_FACTOR) {
        b.anomalies.push('HIGH_YIELD_VARIANCE');
      }
      if (b.openFraudFlags > 0 && b.openFraudFlags > avgFlags * OUTLIER_FACTOR) {
        b.anomalies.push('HIGH_FRAUD_FLAGS');
      }
      if (b.sellThroughRatio !== null && avgRatio > 0
          && b.sellThroughRatio < avgRatio * SELL_THROUGH_FACTOR) {
        b.anomalies.push('SALES_BELOW_PRODUCTION');
      }
    }
    b.sellThroughRatio = b.sellThroughRatio === null ? null : Math.round(b.sellThroughRatio * 100) / 100;
  });

  branches.sort((a, b) => b.performanceScore - a.performanceScore);
  branches.forEach((b, i) => { b.rank = i + 1; });

  const underperformingBranches = branches
    .filter((b) => b.anomalies.includes('LOW_REVENUE'))
    .map((b) => ({
      branchId: b.branchId,
      branchName: b.branchName,
      revenue: b.totalRevenue,
      percentBelowAverage: Math.round((1 - b.totalRevenue / avgRevenue) * 100),
    }));

  return {
    branches,
    totals: { branchCount: n, totalRevenue, totalOpenFraudFlags },
    averageRevenue: avgRevenue,
    underperformingBranches,
    flaggedBranches: branches
      .filter((b) => b.anomalies.length > 0)
      .map((b) => ({ branchId: b.branchId, branchName: b.branchName, anomalies: b.anomalies })),
  };
}

module.exports = {
  createBranch,
  listBranchesForOwner,
  getBranchById,
  updateBranch,
  deactivateBranch,
  getConsolidatedDashboard,
};