const cron = require('node-cron');
const { query } = require('../config/db');
const pnlService = require('../modules/08-financial-dashboard/pnl.service');
const healthScoreService = require('../modules/11-owner-notifications/healthScore.service');
const whatsappService = require('../modules/11-owner-notifications/whatsapp.service');
const batchService = require('../modules/04-production-batch/batch.service');
const fraudService = require('../modules/09-ai-fraud-anomaly/fraud.service');
const logger = require('../utils/logger');


async function runNightlyPnLForAllBranches() {
  logger.info('Running nightly P&L job...');

  const result = await query(`SELECT id FROM branches WHERE is_active = true`);
  const branches = result.rows;

  for (const branch of branches) {
    try {
      const pnl = await pnlService.getPnLForDate(branch.id, new Date());
      const health = await healthScoreService.calculateHealthScore(branch.id);
      const yieldRate = await batchService.getYieldRate(branch.id, 1);
      const openAlerts = await fraudService.getAlerts(branch.id, 'open');

      await whatsappService.sendDailySummary(branch.id, {
        netProfit: pnl.netProfit.toFixed(0),
        targetProfit: 2000, // could be made configurable per branch
        cashAccuracy: health.breakdown.cashAccuracy,
        batchYield: (yieldRate * 100).toFixed(1),
        activeFraudFlags: openAlerts.length,
      });

      logger.info(`Nightly P&L completed for branch ${branch.id}`);
    } catch (err) {
      logger.error(`Nightly P&L failed for branch ${branch.id}: ${err.message}`);
    }
  }
}


function scheduleNightlyPnLJob() {
  cron.schedule('0 0 * * *', runNightlyPnLForAllBranches);
  logger.info('Nightly P&L job scheduled (00:00 daily)');
}

module.exports = { runNightlyPnLForAllBranches, scheduleNightlyPnLJob };