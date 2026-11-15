const express = require('express');
const batchController = require('./batch.controller');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');

const router = express.Router();

router.use(authenticate);


router.get('/', authorize('owner', 'manager'), batchController.getBatches);


router.get('/yield-rate', authorize('owner', 'manager'), batchController.getYieldRate);


router.get('/:id', batchController.getBatch);


router.post('/', authorize('owner', 'manager', 'staff'), batchController.createBatch);

module.exports = router;