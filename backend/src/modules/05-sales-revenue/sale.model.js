const { query } = require('../../config/db');


async function recordSale({ branchId, staffId, shift, paymentType, productName, unitsSold, amount }) {
  const result = await query(
    `INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
     VALUES ($1, $2, $3, $4, $5, $6, $7, NOW())
     RETURNING *`,
    [branchId, staffId, shift, paymentType, productName, unitsSold, amount]
  );
  return result.rows[0];
}

async function findAllByBranch(branchId, filters = {}) {
  const params = [branchId];
  let sql = `SELECT * FROM sales WHERE branch_id = $1`;

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

async function getTotalRevenueForDate(branchId, date) {
  const result = await query(
    `SELECT COALESCE(SUM(amount), 0) AS total
     FROM sales
     WHERE branch_id = $1 AND (created_at AT TIME ZONE 'Asia/Karachi')::date = $2::date`,
    [branchId, date]
  );
  return parseFloat(result.rows[0].total);
}

async function getCashCollectedForShift(branchId, shift, date) {
  const result = await query(
    `SELECT COALESCE(SUM(amount), 0) AS total
     FROM sales
     WHERE branch_id = $1 AND shift = $2 AND payment_type = 'cash' AND (created_at AT TIME ZONE 'Asia/Karachi')::date = $3::date`,
    [branchId, shift, date]
  );
  return parseFloat(result.rows[0].total);
}

async function createShiftReconciliation({
  branchId,
  staffId,
  shift,
  unitsProduced,
  closingStock,
  expectedUnitsSold,
  cashCollected,
  discrepancyAmount,
}) {
  const result = await query(
    `INSERT INTO shift_reconciliations
      (branch_id, staff_id, shift, units_produced, closing_stock, expected_units_sold,
       cash_collected, discrepancy_amount, created_at)
     VALUES ($1, $2, $3, $4, $5, $6, $7, $8, NOW())
     RETURNING *`,
    [branchId, staffId, shift, unitsProduced, closingStock, expectedUnitsSold, cashCollected, discrepancyAmount]
  );
  return result.rows[0];
}

async function getCashierPerformanceHistory(staffId, limit = 30) {
  const result = await query(
    `SELECT * FROM shift_reconciliations WHERE staff_id = $1 ORDER BY created_at DESC LIMIT $2`,
    [staffId, limit]
  );
  return result.rows;
}

module.exports = {
  recordSale,
  findAllByBranch,
  getTotalRevenueForDate,
  getCashCollectedForShift,
  createShiftReconciliation,
  getCashierPerformanceHistory,
};