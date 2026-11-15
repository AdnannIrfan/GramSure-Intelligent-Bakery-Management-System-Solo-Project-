const { query } = require('../../config/db');



async function setBudget({ branchId, category, month, year, budgetedAmount }) {
  const result = await query(
    `INSERT INTO budgets (branch_id, category, month, year, budgeted_amount, created_at, updated_at)
     VALUES ($1, $2, $3, $4, $5, NOW(), NOW())
     ON CONFLICT (branch_id, category, month, year)
     DO UPDATE SET budgeted_amount = $5, updated_at = NOW()
     RETURNING *`,
    [branchId, category, month, year, budgetedAmount]
  );
  return result.rows[0];
}

async function findAllByBranchAndPeriod(branchId, month, year) {
  const result = await query(
    `SELECT * FROM budgets WHERE branch_id = $1 AND month = $2 AND year = $3 ORDER BY category ASC`,
    [branchId, month, year]
  );
  return result.rows;
}

module.exports = { setBudget, findAllByBranchAndPeriod };