const notificationModel = require('./notification.model');
const { calculateHealthScore } = require('./healthScore.service');

async function getNotifications(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const notifications = await notificationModel.findAllByBranch(branchId, {
    isRead: req.query.isRead !== undefined ? req.query.isRead === 'true' : undefined,
    type: req.query.type,
  });
  return res.status(200).json({ success: true, data: notifications });
}

async function markAsRead(req, res) {
  const notification = await notificationModel.markAsRead(req.params.id);
  return res.status(200).json({ success: true, data: notification });
}

async function markAllAsRead(req, res) {
  const branchId = req.body.branchId || req.user.branchId;
  await notificationModel.markAllAsRead(branchId);
  return res.status(200).json({ success: true, message: 'All notifications marked as read' });
}

async function getUnreadCount(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const count = await notificationModel.getUnreadCount(branchId);
  return res.status(200).json({ success: true, data: { count } });
}

async function getHealthScore(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const healthScore = await calculateHealthScore(branchId);
  return res.status(200).json({ success: true, data: healthScore });
}

module.exports = { getNotifications, markAsRead, markAllAsRead, getUnreadCount, getHealthScore };