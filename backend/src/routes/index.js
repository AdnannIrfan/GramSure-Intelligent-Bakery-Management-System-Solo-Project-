const express = require('express');

const authRoutes = require('../auth/auth.routes');
const recipeRoutes = require('../modules/01-recipe-standards/recipe.routes');
const procurementRoutes = require('../modules/02-procurement-supplier/procurement.routes');
const stockRoutes = require('../modules/03-inventory-stock/stock.routes');
const batchRoutes = require('../modules/04-production-batch/batch.routes');
const saleRoutes = require('../modules/05-sales-revenue/sale.routes');
const expenseRoutes = require('../modules/06-expense-pettycash/expense.routes');
const staffRoutes = require('../modules/07-staff-attendance/staff.routes');
const pnlRoutes = require('../modules/08-financial-dashboard/pnl.routes');
const fraudRoutes = require('../modules/09-ai-fraud-anomaly/fraud.routes');
const forecastRoutes = require('../modules/10-demand-forecasting/forecast.routes');
const notificationRoutes = require('../modules/11-owner-notifications/notification.routes');
const branchRoutes = require('../modules/12-multibranch-franchise/branch.routes');
const stockTransferRoutes = require('../modules/12-multibranch-franchise/stockTransfer.routes');

const router = express.Router();

router.get('/health', (req, res) => {
  res.status(200).json({ success: true, message: 'GramSure API is running', timestamp: new Date().toISOString() });
});

router.use('/auth', authRoutes);
router.use('/recipes', recipeRoutes);
router.use('/procurement', procurementRoutes);
router.use('/stock', stockRoutes);
router.use('/batches', batchRoutes);
router.use('/sales', saleRoutes);
router.use('/expenses', expenseRoutes);
router.use('/staff', staffRoutes);
router.use('/financial-dashboard', pnlRoutes);
router.use('/fraud', fraudRoutes);
router.use('/forecast', forecastRoutes);
router.use('/notifications', notificationRoutes);
router.use('/branches', branchRoutes);
router.use('/stock-transfers', stockTransferRoutes);

module.exports = router;