const { sendWhatsAppMessage, initWhatsApp } = require('./src/config/twilio');

(async () => {
  initWhatsApp();
  const jobs = [];
  for (let i = 1; i <= 20; i++) {
    jobs.push(sendWhatsAppMessage(`*Fraud Alert ${i}/20*\nTest message ${i}`));
  }
  await Promise.all(jobs);
  console.log('All 20 sent');
  process.exit(0);
})();