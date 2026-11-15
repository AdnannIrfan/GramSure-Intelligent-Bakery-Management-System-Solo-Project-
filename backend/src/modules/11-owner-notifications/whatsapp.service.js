const { sendWhatsAppMessage } = require('../../config/twilio');
const notificationModel = require('./notification.model');
const logger = require('../../utils/logger');


async function pushNotification({ branchId, type, title, message, referenceType, referenceId, sendWhatsApp = true }) {
  const notification = await notificationModel.create({ branchId, type, title, message, referenceType, referenceId });

  if (sendWhatsApp) {
    const start = Date.now();
    try {
      await sendWhatsAppMessage(`*${title}*\n${message}`);
      const elapsedMs = Date.now() - start;
      if (elapsedMs > 60000) {
        logger.warn(`WhatsApp delivery exceeded 60s target (${elapsedMs}ms) for notification ${notification.id}`);
      }
    } catch (err) {
      logger.error(`Failed to deliver WhatsApp notification ${notification.id}: ${err.message}`);
    }
  }

  return notification;
}

async function sendDailySummary(branchId, summaryData) {
  const { netProfit, targetProfit, cashAccuracy, batchYield, activeFraudFlags, forecastHighlights } = summaryData;

  const message =
    `Good morning! Here's your bakery update:\n` +
    `Net Profit: Rs. ${netProfit} [Target Rs. ${targetProfit}]\n` +
    `Cash Accuracy: ${cashAccuracy}%\n` +
    `Batch Yield: ${batchYield}%\n` +
    `Fraud Flags: ${activeFraudFlags} active\n` +
    (forecastHighlights ? `Tomorrow's forecast: ${forecastHighlights}\n` : '') +
    `Reply 1R/2R/3A to action items.`;

  return pushNotification({
    branchId,
    type: 'summary',
    title: 'GramSure Daily Summary',
    message,
    sendWhatsApp: true,
  });
}

module.exports = { pushNotification, sendDailySummary };