const express = require('express');
const notificationController = require('./notification.controller');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');

const router = express.Router();

router.use(authenticate);
router.use(authorize('owner', 'manager'));


router.get('/', notificationController.getNotifications);


router.get('/unread-count', notificationController.getUnreadCount);


router.get('/health-score', notificationController.getHealthScore);


router.patch('/:id/read', notificationController.markAsRead);


router.patch('/mark-all-read', notificationController.markAllAsRead);

module.exports = router;