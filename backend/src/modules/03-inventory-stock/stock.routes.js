const express = require('express');
const stockController = require('./stock.controller');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');

const router = express.Router();

router.use(authenticate);


router.get('/', stockController.getStockLevels);


router.get('/low', stockController.getLowStockItems);


router.post('/increase', authorize('owner', 'manager'), stockController.increaseStock);


router.post('/decrease', authorize('owner', 'manager'), stockController.decreaseStock);

module.exports = router;