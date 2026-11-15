const app = require('./app');
const env = require('./config/env');
const { testConnection } = require('./config/db');
const { initFirebase } = require('./config/firebase');
const { initWhatsApp } = require('./config/twilio'); // NEW
const { scheduleNightlyPnLJob } = require('./jobs/nightlyPnLJob');
const { scheduleEveningForecastJob } = require('./jobs/eveningForecastJob');
const logger = require('./utils/logger');

async function startServer() {
  try {
    await testConnection();
    initFirebase();

    app.listen(env.port, () => {
      logger.info(`GramSure backend running on port ${env.port} [${env.nodeEnv}]`);
    });

    initWhatsApp(); // NEW: starts WhatsApp login (QR shows once in the terminal)

    scheduleNightlyPnLJob();
    scheduleEveningForecastJob();
    require('./modules/02-procurement-supplier/procurement.service').startPaymentReminderJob();
  } catch (err) {
    logger.error(`Failed to start server: ${err.message}`);
    process.exit(1);
  }
}

startServer();


process.on('SIGTERM', () => {
  logger.info('SIGTERM received, shutting down gracefully...');
  process.exit(0);
});

process.on('unhandledRejection', (reason) => {
  logger.error(`Unhandled Rejection: ${reason}`);
});