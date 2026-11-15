const express = require('express');
const procurementController = require('./procurement.controller');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');

const router = express.Router();

router.use(authenticate);


router.get('/suppliers', procurementController.listSuppliers);
router.post('/suppliers', authorize('owner', 'manager'), procurementController.addSupplier);

// NEW: supplier scorecards and credit days
router.get('/suppliers/scorecards', procurementController.getScorecards);
router.get('/suppliers/:id/scorecard-history', procurementController.getScorecardHistory);
router.patch('/suppliers/:id/credit-days', authorize('owner', 'manager'), procurementController.setCreditDays);


router.get('/purchase-orders', procurementController.listPurchaseOrders);
router.post('/purchase-orders', authorize('owner', 'manager'), procurementController.createPurchaseOrder);


router.post('/purchase-orders/:id/delivery', authorize('owner', 'manager', 'staff'), procurementController.recordDelivery);

// NEW: supplier invoices and payments
router.get('/invoices', procurementController.listInvoices);
router.post('/invoices', authorize('owner', 'manager'), procurementController.createInvoice);
router.post('/invoices/:id/pay', authorize('owner', 'manager'), procurementController.payInvoice);
router.get('/payments/outstanding', procurementController.getOutstanding);

module.exports = router;