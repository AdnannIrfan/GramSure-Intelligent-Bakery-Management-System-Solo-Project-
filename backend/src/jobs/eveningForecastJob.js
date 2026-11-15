const cron = require('node-cron');
const { query } = require('../config/db');
const forecastService = require('../modules/10-demand-forecasting/forecast.service');
const logger = require('../utils/logger');


async function runEveningForecastForAllBranches() {
  logger.info('Running evening forecast job...');

  const result = await query(`SELECT id FROM branches WHERE is_active = true`);
  const branches = result.rows;

  for (const branch of branches) {
    try {
      await forecastService.sendTomorrowForecastToOwner(branch.id);
      logger.info(`Evening forecast completed for branch ${branch.id}`);
    } catch (err) {
      logger.error(`Evening forecast failed for branch ${branch.id}: ${err.message}`);
    }
  }
}


function scheduleEveningForecastJob() {
  cron.schedule('0 21 * * *', runEveningForecastForAllBranches);
  logger.info('Evening forecast job scheduled (21:00 daily)');
}

module.exports = { runEveningForecastForAllBranches, scheduleEveningForecastJob };