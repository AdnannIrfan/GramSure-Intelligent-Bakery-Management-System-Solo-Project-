const expenseService = require('./expense.service');

// Only the owner may act on another branch. Everyone else is locked to their own branch.
function resolveBranchId(req, requested) {
  if (req.user.role === 'owner') {
    return requested || req.user.branchId;
  }
  return req.user.branchId;
}

async function submitExpense(req, res) {
  const branchId = resolveBranchId(req, req.body.branchId);
  const submittedBy = req.user.sub;
  const receiptBuffer = req.file ? req.file.buffer : null;
  const receiptMimeType = req.file ? req.file.mimetype : null;

  const expense = await expenseService.submitExpense({
    ...req.body,
    branchId,
    submittedBy,
    receiptBuffer,
    receiptMimeType,
  });
  return res.status(201).json({ success: true, data: expense });
}

async function getExpenses(req, res) {
  const branchId = resolveBranchId(req, req.query.branchId);
  const expenses = await expenseService.getExpenses(branchId, {
    status: req.query.status,
    fromDate: req.query.fromDate,
    toDate: req.query.toDate,
  });
  return res.status(200).json({ success: true, data: expenses });
}

async function getMyExpenses(req, res) {
  const expenses = await expenseService.getMyExpenses(req.user.sub, req.user.branchId);
  return res.status(200).json({ success: true, data: expenses });
}

async function approveExpense(req, res) {
  const expense = await expenseService.approveExpense(req.params.id, req.user.sub);
  return res.status(200).json({ success: true, data: expense });
}

async function rejectExpense(req, res) {
  const expense = await expenseService.rejectExpense(req.params.id, req.user.sub, req.body && req.body.reason);
  return res.status(200).json({ success: true, data: expense });
}

async function getBudgetVsActual(req, res) {
  const branchId = resolveBranchId(req, req.query.branchId);
  const month = parseInt(req.query.month, 10) || new Date().getMonth() + 1;
  const year = parseInt(req.query.year, 10) || new Date().getFullYear();
  const report = await expenseService.getBudgetVsActual(branchId, month, year);
  return res.status(200).json({ success: true, data: report });
}

async function setBudget(req, res) {
  const branchId = resolveBranchId(req, req.body.branchId);
  const budget = await expenseService.setBudget({ ...req.body, branchId });
  return res.status(201).json({ success: true, data: budget });
}

module.exports = {
  submitExpense,
  getExpenses,
  getMyExpenses,
  approveExpense,
  rejectExpense,
  getBudgetVsActual,
  setBudget,
};