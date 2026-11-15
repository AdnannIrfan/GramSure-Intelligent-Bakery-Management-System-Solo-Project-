const { sendWhatsAppMessage, initWhatsApp } = require('./src/config/twilio');

(async () => {
  initWhatsApp();
  await sendWhatsAppMessage('🚨 High-risk fraud alert (score: 90)\nType: test\nTest from testMsg.js');
  console.log('sent');
  process.exit(0);
})();