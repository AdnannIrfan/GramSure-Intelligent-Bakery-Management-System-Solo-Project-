require('dotenv').config();
const { sendWhatsAppMessage } = require('./src/config/twilio');

(async () => {
  const r = await sendWhatsAppMessage('GramSure test alert: Twilio is working');
  console.log(r ? 'SENT, sid: ' + r.sid : 'FAILED, see the error above');
  process.exit(0);
})();
