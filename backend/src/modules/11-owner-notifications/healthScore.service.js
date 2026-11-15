const { query } = require('../../config/db');
const pnlService = require('../08-financial-dashboard/pnl.service');
const batchService = require('../04-production-batch/batch.service');
const fraudService = require('../09-ai-fraud-anomaly/fraud.service');
const saleService = require('../05-sales-revenue/sale.service');



const DEFAULT_WEIGHTS = { profitability: 0.35, yieldRate: 0.25, fraud: 0.25, cashAccuracy: 0.15 };

async function calculateHealthScore(branchId) {
  const today = new Date();

  const pnl = await pnlService.getPnLForDate(branchId, today);
  const yieldRate = await batchService.getYieldRate(branchId, 30);
  const openFraudAlerts = await fraudService.getAlerts(branchId, 'open');

  
  const profitMargin = pnl.revenue > 0 ? (pnl.netProfit / pnl.revenue) * 100 : 0;
  const profitabilityScore = Math.max(0, Math.min(100, profitMargin * 4)); 

  
  const yieldScore = Math.max(0, Math.min(100, yieldRate * 100));

  
  const fraudScore = Math.max(0, 100 - openFraudAlerts.length * 15);

  
  const cashAccuracy = await getRecentCashAccuracy(branchId);

  const weights = await getWeightsForBranch(branchId);
  const overallScore = Math.round(
    profitabilityScore * weights.profitability +
    yieldScore * weights.yieldRate +
    fraudScore * weights.fraud +
    cashAccuracy * weights.cashAccuracy
  );

  return {
    overallScore,
    breakdown: {
      profitability: Math.round(profitabilityScore),
      yieldRate: Math.round(yieldScore),
      fraud: Math.round(fraudScore),
      cashAccuracy: Math.round(cashAccuracy),
    },
    label: overallScore >= 75 ? 'GOOD' : overallScore >= 50 ? 'FAIR' : 'NEEDS ATTENTION',
  };
}

async function getRecentCashAccuracy(branchId, days = 7) {
  const result = await query(
    `SELECT
       COALESCE(AVG(1 - ABS(discrepancy_amount) / NULLIF(cash_collected + ABS(discrepancy_amount), 0)), 1) AS accuracy
     FROM shift_reconciliations
     WHERE branch_id = $1 AND created_at >= NOW() - ($2 || ' days')::interval`,
    [branchId, days]
  );
  return parseFloat(result.rows[0]?.accuracy || 1) * 100;
}

async function getWeightsForBranch(branchId) {
  const result = await query(`SELECT * FROM business_health_config WHERE branch_id = $1`, [branchId]);
  if (result.rows.length === 0) return DEFAULT_WEIGHTS;
  const config = result.rows[0];
  return {
    profitability: parseFloat(config.weight_profitability),
    yieldRate: parseFloat(config.weight_yield),
    fraud: parseFloat(config.weight_fraud),
    cashAccuracy: parseFloat(config.weight_cash_accuracy),
  };
}

module.exports = { calculateHealthScore };