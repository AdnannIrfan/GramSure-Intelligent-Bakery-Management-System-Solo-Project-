const batchModel = require('./batch.model');
const recipeService = require('../01-recipe-standards/recipe.service');
const stockService = require('../03-inventory-stock/stock.service');
const { sendWhatsAppMessage } = require('../../config/twilio');
const suspicionIndexService = require('../09-ai-fraud-anomaly/suspicionIndex.service');
const fraudService = require('../09-ai-fraud-anomaly/fraud.service');

const VARIANCE_TOLERANCE_PERCENT = 2.0;

async function logProductionBatch({ branchId, staffId, shift, productName, flourUsedKg, actualUnits }) {
  if (!productName || !flourUsedKg || actualUnits === undefined) {
    const err = new Error('productName, flourUsedKg, and actualUnits are required');
    err.statusCode = 400;
    throw err;
  }

  const recipe = await recipeService.getStandardForProduct(productName, branchId);
  const expectedUnits = recipeService.calculateExpectedYield(recipe, flourUsedKg);

  const variancePercent = ((actualUnits - expectedUnits) / expectedUnits) * 100;
  const fraudFlag = Math.abs(variancePercent) > VARIANCE_TOLERANCE_PERCENT;

  const batch = await batchModel.createBatch({
    branchId,
    recipeId: recipe.id,
    productName,
    staffId,
    shift,
    flourUsedKg,
    expectedUnits,
    actualUnits,
    variancePercent,
    fraudFlag,
  });

  await stockService.decreaseStock({
    materialName: 'Maida Flour',
    branchId,
    quantity: flourUsedKg,
    referenceType: 'production_batch',
    referenceId: batch.id,
  });

  await suspicionIndexService.recordBatchOutcome(staffId, variancePercent, fraudFlag);

  if (fraudFlag) {
    await sendWhatsAppMessage(
      `🚨 Fraud Alert — Batch #${batch.id}\nProduct: ${productName}\nStaff: ${staffId}\n` +
      `Expected: ${expectedUnits} units | Actual: ${actualUnits} units\n` +
      `Variance: ${variancePercent.toFixed(1)}% (limit ±${VARIANCE_TOLERANCE_PERCENT}%)`
    );

    const riskScore = Math.min(100, Math.round(Math.abs(variancePercent) * 2));
    await fraudService.createFraudAlert({
      branchId,
      staffId,
      alertType: 'production_variance',
      referenceType: 'production_batch',
      referenceId: batch.id,
      riskScore,
      details: `Product: ${productName} | Expected: ${expectedUnits} | Actual: ${actualUnits} | Variance: ${variancePercent.toFixed(1)}%`,
    });
  }

  return { ...batch, expectedUnits, variancePercent, fraudFlag };
}

async function getBatches(branchId, filters) {
  return batchModel.findAllByBranch(branchId, filters);
}

async function getBatchById(id) {
  const batch = await batchModel.findById(id);
  if (!batch) {
    const err = new Error('Batch not found');
    err.statusCode = 404;
    throw err;
  }
  return batch;
}

async function getYieldRate(branchId, days) {
  return batchModel.getBranchYieldRate(branchId, days);
}

async function getStaffBatchHistory(staffId, limit) {
  return batchModel.findByStaffId(staffId, limit);
}

module.exports = { logProductionBatch, getBatches, getBatchById, getYieldRate, getStaffBatchHistory };