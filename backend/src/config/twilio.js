const env = require('./env');
const logger = require('../utils/logger');

let client = null;

function getTwilioClient() {
  if (client) return client;
  const { accountSid, authToken } = env.twilio;
  if (!accountSid || !authToken) return null;
  const twilio = require('twilio');
  client = twilio(accountSid, authToken);
  return client;
}

// 0333 5155613 / 923335155613 / +92 333 5155613  ->  +923335155613
function toE164(num) {
  let d = String(num).replace(/^whatsapp:/, '').replace(/[^\d]/g, '');
  if (d.startsWith('00')) d = d.slice(2);
  if (d.startsWith('0')) d = '92' + d.slice(1);
  return '+' + d;
}

// Never throws. Returns { sid } on success, null on failure,
// so an alert problem can never cause a 500 on the mobile app.
async function sendWhatsAppMessage(message, toNumber) {
  try {
    const to = toNumber || env.whatsapp.ownerNumber;
    if (!to) {
      logger.error('Alert not sent: no recipient number configured.');
      return null;
    }

    const twilioClient = getTwilioClient();
    if (!twilioClient || !env.twilio.from) {
      logger.warn('Alert not sent: Twilio credentials or sender number missing in .env');
      return null;
    }

    const viaWhatsApp = env.twilio.channel === 'whatsapp';
    const prefix = viaWhatsApp ? 'whatsapp:' : '';

    const result = await twilioClient.messages.create({
      from: prefix + toE164(env.twilio.from),
      to: prefix + toE164(to),
      body: message,
    });

    logger.info(`Alert sent via Twilio ${env.twilio.channel} (sid ${result.sid})`);
    return { sid: result.sid };
  } catch (err) {
    logger.error(`Failed to send Twilio alert: ${err.message}`);
    return null;
  }
}

// Kept so server.js needs no changes. No browser is started anymore.
function initWhatsApp() {
  logger.info(`Alerts via Twilio (${env.twilio.channel})`);
}

module.exports = { getTwilioClient, sendWhatsAppMessage, initWhatsApp };