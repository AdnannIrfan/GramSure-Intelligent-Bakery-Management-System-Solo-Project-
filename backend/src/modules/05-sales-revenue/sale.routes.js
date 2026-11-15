const express = require('express');
const saleController = require('./sale.controller');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');

const router = express.Router();

router.use(authenticate);


router.get('/', authorize('owner', 'manager'), saleController.getSales);


router.post('/', authorize('owner', 'manager', 'staff'), saleController.recordSale);


router.post('/reconcile-shift', authorize('owner', 'manager', 'staff'), saleController.reconcileShift);


router.get('/cashier-performance/:staffId', authorize('owner', 'manager'), saleController.getCashierPerformance);

module.exports = router;