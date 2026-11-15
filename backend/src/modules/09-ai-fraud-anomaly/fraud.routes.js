const express = require('express');
const fraudController = require('./fraud.controller');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');

const router = express.Router();

router.use(authenticate);
router.use(authorize('owner', 'manager'));


router.post('/analyze', fraudController.runAnalysis);


router.get('/alerts', fraudController.getAlerts);


router.patch('/alerts/:id/review', fraudController.reviewAlert);


router.patch('/alerts/:id/dismiss', fraudController.dismissAlert);


router.get('/suspicion-leaderboard', fraudController.getSuspicionLeaderboard);

module.exports = router;