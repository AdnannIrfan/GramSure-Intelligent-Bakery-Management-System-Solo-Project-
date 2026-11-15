const express = require('express');
const stockTransferController = require('./stockTransfer.controller');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');

const router = express.Router();

router.use(authenticate);
router.use(authorize('owner', 'manager'));


router.get('/', stockTransferController.listTransfers);


router.post('/', stockTransferController.initiateTransfer);


router.patch('/:id/complete', stockTransferController.completeTransfer);


router.patch('/:id/cancel', stockTransferController.cancelTransfer);

module.exports = router;
