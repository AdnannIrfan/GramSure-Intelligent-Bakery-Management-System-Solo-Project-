const crypto = require('crypto');
const expenseModel = require('./expense.model');
const budgetModel = require('./budget.model');
const { uploadBuffer } = require('../../config/supabase');
const { sendWhatsAppMessage } = require('../../config/twilio');

// Edit this list if you need more categories. Frontend must send one of these values.
const ALLOWED_CATEGORIES = ['utilities', 'maintenance', 'packaging', 'salaries', 'rent', 'transport', 'other'];

const MIME_EXTENSIONS = {
  'image/jpeg': 'jpg',
  'image/png': 'png',
  'image/webp': 'webp',
  'application/pdf': 'pdf',
};

const UUID_REGEX = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

function httpError(message, statusCode) {
  const err = new Error(message);
  err.statusCode = statusCode;
  return err;
}

// WhatsApp problems must never break a saved expense
async function notify(message) {
  try {
    await sendWhatsAppMessage(message);
  } catch (e) {
    console.error('WhatsApp notification failed:', e.message);
  }
}

async function logAudit(entry) {
  try {
    await expenseModel.addAuditLog(entry);
  } catch (e) {
    console.error('Audit log failed:', e.message);
  }
}

async function submitExpense({ branchId, category, amount, description, expenseDate, submittedBy, receiptBuffer, receiptMimeType }) {
  if (!category || !amount) {
    throw httpError('category and amount are required', 400);
  }

  const cleanCategory = String(category).trim().toLowerCase();
  if (!ALLOWED_CATEGORIES.includes(cleanCategory)) {
    throw httpError(`category must be one of: ${ALLOWED_CATEGORIES.join(', ')}`, 400);
  }

  const cleanAmount = Number(amount);
  if (!Number.isFinite(cleanAmount) || cleanAmount <= 0) {
    throw httpError('amount must be a number greater than 0', 400);
  }

  if (expenseDate && Number.isNaN(Date.parse(expenseDate))) {
    throw httpError('expenseDate is not a valid date', 400);
  }

  let receiptUrl = null;
  let receiptHash = null;

  if (receiptBuffer) {
    const mime = receiptMimeType || 'image/jpeg';
    const ext = MIME_EXTENSIONS[mime];
    if (!ext) {
      throw httpError('Receipt must be a JPG, PNG, WEBP image or a PDF', 400);
    }
    receiptHash = crypto.createHash('sha256').update(receiptBuffer).digest('hex');
    const destPath = `${branchId}/${Date.now()}_${receiptHash.substring(0, 8)}.${ext}`;
    receiptUrl = await uploadBuffer(receiptBuffer, destPath, mime);
  }

  const expense = await expenseModel.create({
    branchId,
    category: cleanCategory,
    amount: cleanAmount,
    description,
    expenseDate,
    receiptUrl,
    receiptHash,
    submittedBy,
  });

  // Duplicate check 1: identical receipt photo
  let duplicateReason = null;
  if (receiptHash) {
    const matches = await expenseModel.findByReceiptHash(receiptHash, branchId);
    if (matches.length > 1) {
      duplicateReason = 'Identical receipt file already submitted';
    }
  }

  // Duplicate check 2: same category, amount and date
  if (!duplicateReason) {
    const similar = await expenseModel.findPossibleDuplicates({
      branchId,
      category: cleanCategory,
      amount: cleanAmount,
      expenseDate,
      excludeId: expense.id,
    });
    if (similar.length > 0) {
      duplicateReason = 'Same category, amount and date as an existing expense';
    }
  }

  if (duplicateReason) {
    await expenseModel.flagDuplicate(expense.id);
    expense.duplicate_flag = true;
    await logAudit({
      expenseId: expense.id,
      userId: submittedBy,
      branchId,
      eventType: 'duplicate_detected',
      details: duplicateReason,
    });
    await notify(
      `⚠️ Possible duplicate expense #${expense.id} (Rs. ${cleanAmount}, ${cleanCategory})\nReason: ${duplicateReason}`
    );
  }

  await notify(
    `💵 New expense pending approval\nCategory: ${cleanCategory}\nAmount: Rs. ${cleanAmount}\nExpense ID: ${expense.id}`
  );

  return expense;
}

async function getExpenses(branchId, filters) {
  return expenseModel.findAllByBranch(branchId, filters);
}

async function getMyExpenses(userId, branchId) {
  return expenseModel.findAllBySubmitter(userId, branchId);
}

async function changeStatus(id, newStatus, userId, reason) {
  if (!UUID_REGEX.test(String(id))) {
    throw httpError('Expense not found', 404);
  }
  const expense = await expenseModel.findById(id);
  if (!expense) {
    throw httpError('Expense not found', 404);
  }
  const updated = await expenseModel.updateStatus(id, newStatus, userId, reason);
  if (!updated) {
    await logAudit({
      expenseId: id,
      userId,
      branchId: expense.branch_id,
      eventType: 'invalid_status_change_attempt',
      details: `Tried to set "${newStatus}" but expense is already "${expense.status}"`,
    });
    throw httpError(`Expense is already ${expense.status}`, 409);
  }
  return updated;
}

async function approveExpense(id, approvedBy) {
  return changeStatus(id, 'approved', approvedBy, null);
}

async function rejectExpense(id, approvedBy, reason) {
  return changeStatus(id, 'rejected', approvedBy, reason ? String(reason).trim() : null);
}

async function getBudgetVsActual(branchId, month, year) {
  const budgets = await budgetModel.findAllByBranchAndPeriod(branchId, month, year);
  const actuals = await expenseModel.getMonthlyTotalByCategory(branchId, month, year);

  // Merge by lowercase category so "Utilities" and "utilities" match
  const rows = new Map();

  for (const b of budgets) {
    const key = String(b.category).toLowerCase();
    const existing = rows.get(key) || { category: key, budgeted: 0, actual: 0, pending: 0 };
    existing.budgeted += parseFloat(b.budgeted_amount);
    rows.set(key, existing);
  }

  for (const a of actuals) {
    const key = String(a.category).toLowerCase();
    const existing = rows.get(key) || { category: key, budgeted: 0, actual: 0, pending: 0 };
    existing.actual += parseFloat(a.total);
    existing.pending += parseFloat(a.pending);
    rows.set(key, existing);
  }

  return Array.from(rows.values())
    .map((r) => {
      const variance = r.budgeted - r.actual; // positive = under budget, negative = over budget
      return {
        category: r.category,
        budgeted: r.budgeted,
        actual: r.actual,
        pending: r.pending,
        variance,
        variancePercent: r.budgeted > 0 ? (variance / r.budgeted) * 100 : 0,
        usedPercent: r.budgeted > 0 ? (r.actual / r.budgeted) * 100 : null,
        status: r.budgeted === 0 ? 'no_budget' : r.actual > r.budgeted ? 'over_budget' : 'within_budget',
      };
    })
    .sort((a, b) => a.category.localeCompare(b.category));
}

async function setBudget(data) {
  const category = data.category ? String(data.category).trim().toLowerCase() : '';
  const month = parseInt(data.month, 10);
  const year = parseInt(data.year, 10);
  const budgetedAmount = Number(data.budgetedAmount);

  if (!category) throw httpError('category is required', 400);
  if (!(month >= 1 && month <= 12)) throw httpError('month must be between 1 and 12', 400);
  if (!(year >= 2000 && year <= 2100)) throw httpError('year is not valid', 400);
  if (!Number.isFinite(budgetedAmount) || budgetedAmount < 0) {
    throw httpError('budgetedAmount must be 0 or more', 400);
  }

  return budgetModel.setBudget({ branchId: data.branchId, category, month, year, budgetedAmount });
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