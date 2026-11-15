const express = require('express');
const pnlController = require('./pnl.controller');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');

const router = express.Router();

router.use(authenticate);
router.use(authorize('owner', 'manager'));


router.get('/pnl/today', pnlController.getTodayPnL);


router.get('/pnl/:date', pnlController.getPnLForDate);


router.get('/pnl-range', pnlController.getPnLRange);


router.get('/product-margins', pnlController.getProductMargins);

module.exports = router;