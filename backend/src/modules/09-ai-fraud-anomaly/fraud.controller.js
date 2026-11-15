const fraudService = require('./fraud.service');

async function runAnalysis(req, res) {
  const branchId = req.body.branchId || req.user.branchId;
  const alerts = await fraudService.runAnomalyDetection(branchId);
  return res.status(201).json({ success: true, data: alerts });
}

async function getAlerts(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const alerts = await fraudService.getAlerts(branchId, req.query.status);
  return res.status(200).json({ success: true, data: alerts });
}

async function reviewAlert(req, res) {
  const alert = await fraudService.updateAlertStatus(req.params.id, 'reviewed');
  return res.status(200).json({ success: true, data: alert });
}

async function dismissAlert(req, res) {
  const alert = await fraudService.updateAlertStatus(req.params.id, 'dismissed');
  return res.status(200).json({ success: true, data: alert });
}

async function getSuspicionLeaderboard(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const leaderboard = await fraudService.getSuspicionLeaderboard(branchId, req.query.limit ? parseInt(req.query.limit, 10) : 10);
  return res.status(200).json({ success: true, data: leaderboard });
}

module.exports = { runAnalysis, getAlerts, reviewAlert, dismissAlert, getSuspicionLeaderboard };