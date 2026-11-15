const express = require('express');
const expenseController = require('./expense.controller');
const expenseModel = require('./expense.model');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');
const upload = require('../../middleware/upload.middleware');

const router = express.Router();

router.use(authenticate);

// Owner-only gate for approve/reject that also records blocked attempts
function ownerOnlyWithAudit(action) {
  return async (req, res, next) => {
    if (req.user && req.user.role === 'owner') {
      return next();
    }
    try {
      await expenseModel.addAuditLog({
        expenseId: req.params.id,
        userId: req.user && req.user.sub,
        branchId: req.user && req.user.branchId,
        eventType: 'unauthorized_approval_attempt',
        details: `Role "${req.user && req.user.role}" tried to ${action} an expense`,
      });
    } catch (e) {
      console.error('Audit log failed:', e.message);
    }
    return res.status(403).json({
      success: false,
      message: 'Only the owner can approve or reject expenses',
    });
  };
}

router.get('/', authorize('owner', 'manager'), expenseController.getExpenses);

router.get('/mine', authorize('owner', 'manager', 'staff'), expenseController.getMyExpenses);

router.post('/', authorize('owner', 'manager', 'staff'), upload.single('receipt'), expenseController.submitExpense);

router.patch('/:id/approve', ownerOnlyWithAudit('approve'), expenseController.approveExpense);

router.patch('/:id/reject', ownerOnlyWithAudit('reject'), expenseController.rejectExpense);

router.get('/budget-vs-actual', authorize('owner', 'manager'), expenseController.getBudgetVsActual);

router.post('/budget', authorize('owner'), expenseController.setBudget);

module.exports = router;