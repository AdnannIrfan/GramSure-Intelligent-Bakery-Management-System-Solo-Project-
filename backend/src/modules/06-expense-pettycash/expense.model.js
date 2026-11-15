const { query } = require('../../config/db');

async function create({ branchId, category, amount, description, expenseDate, receiptUrl, receiptHash, submittedBy }) {
  const result = await query(
    `INSERT INTO expenses
      (branch_id, category, amount, description, expense_date, receipt_url, receipt_hash, status, submitted_by, duplicate_flag, created_at, updated_at)
     VALUES ($1, $2, $3, $4, COALESCE($5::date, CURRENT_DATE), $6, $7, 'pending', $8, false, NOW(), NOW())
     RETURNING *`,
    [branchId, category, amount, description || null, expenseDate || null, receiptUrl || null, receiptHash || null, submittedBy]
  );
  return result.rows[0];
}

async function findAllByBranch(branchId, filters = {}) {
  const params = [branchId];
  let sql = `SELECT * FROM expenses WHERE branch_id = $1`;

  if (filters.status) {
    params.push(filters.status);
    sql += ` AND status = $${params.length}`;
  }
  if (filters.fromDate) {
    params.push(filters.fromDate);
    sql += ` AND created_at >= $${params.length}`;
  }
  if (filters.toDate) {
    params.push(filters.toDate);
    sql += ` AND created_at <= $${params.length}`;
  }
  sql += ` ORDER BY created_at DESC`;
  const result = await query(sql, params);
  return result.rows;
}

async function findAllBySubmitter(userId, branchId) {
  const result = await query(
    `SELECT * FROM expenses WHERE submitted_by = $1 AND branch_id = $2 ORDER BY created_at DESC`,
    [userId, branchId]
  );
  return result.rows;
}

async function findById(id) {
  const result = await query(`SELECT * FROM expenses WHERE id = $1`, [id]);
  return result.rows[0] || null;
}

async function findByReceiptHash(receiptHash, branchId) {
  const result = await query(
    `SELECT * FROM expenses WHERE receipt_hash = $1 AND branch_id = $2`,
    [receiptHash, branchId]
  );
  return result.rows;
}

// Same branch + category + amount + date, not rejected, excluding the new expense itself
async function findPossibleDuplicates({ branchId, category, amount, expenseDate, excludeId }) {
  const result = await query(
    `SELECT id FROM expenses
     WHERE branch_id = $1
       AND LOWER(category) = LOWER($2)
       AND amount = $3
       AND expense_date = COALESCE($4::date, CURRENT_DATE)
       AND id <> $5
       AND status <> 'rejected'`,
    [branchId, category, amount, expenseDate || null, excludeId]
  );
  return result.rows;
}

// Only moves an expense that is still pending. Returns undefined if it was not pending.
async function updateStatus(id, status, approvedBy, rejectionReason) {
  const result = await query(
    `UPDATE expenses
     SET status = $2, approved_by = $3, rejection_reason = $4, approved_at = NOW(), updated_at = NOW()
     WHERE id = $1 AND status = 'pending'
     RETURNING *`,
    [id, status, approvedBy || null, rejectionReason || null]
  );
  return result.rows[0];
}

async function flagDuplicate(id) {
  const result = await query(
    `UPDATE expenses SET duplicate_flag = true, updated_at = NOW() WHERE id = $1 RETURNING *`,
    [id]
  );
  return result.rows[0];
}

// Returns approved total (key "total", same as before) plus pending total
async function getMonthlyTotalByCategory(branchId, month, year) {
  const result = await query(
    `SELECT category,
            COALESCE(SUM(amount) FILTER (WHERE status = 'approved'), 0) AS total,
            COALESCE(SUM(amount) FILTER (WHERE status = 'pending'), 0)  AS pending
     FROM expenses
     WHERE branch_id = $1
       AND status IN ('approved', 'pending')
       AND EXTRACT(MONTH FROM expense_date) = $2
       AND EXTRACT(YEAR FROM expense_date) = $3
     GROUP BY category`,
    [branchId, month, year]
  );
  return result.rows;
}

async function addAuditLog({ expenseId, userId, branchId, eventType, details }) {
  await query(
    `INSERT INTO expense_audit_log (expense_id, user_id, branch_id, event_type, details)
     VALUES ($1, $2, $3, $4, $5)`,
    [expenseId ? String(expenseId) : null, userId ? String(userId) : null, branchId ? String(branchId) : null, eventType, details || null]
  );
}

module.exports = {
  create,
  findAllByBranch,
  findAllBySubmitter,
  findById,
  findByReceiptHash,
  findPossibleDuplicates,
  updateStatus,
  flagDuplicate,
  getMonthlyTotalByCategory,
  addAuditLog,
};