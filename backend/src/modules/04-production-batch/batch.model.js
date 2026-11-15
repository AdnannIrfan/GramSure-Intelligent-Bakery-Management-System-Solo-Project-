const { query } = require('../../config/db');



async function createBatch({
  branchId,
  recipeId,
  productName,
  staffId,
  shift,
  flourUsedKg,
  expectedUnits,
  actualUnits,
  variancePercent,
  fraudFlag,
}) {
  const result = await query(
    `INSERT INTO production_batches
      (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg,
       expected_units, actual_units, variance_percent, fraud_flag, created_at)
     VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, NOW())
     RETURNING *`,
    [branchId, recipeId, productName, staffId, shift, flourUsedKg, expectedUnits, actualUnits, variancePercent, fraudFlag]
  );
  return result.rows[0];
}

async function findAllByBranch(branchId, filters = {}) {
  const params = [branchId];
  let sql = `SELECT * FROM production_batches WHERE branch_id = $1`;

  if (filters.staffId) {
    params.push(filters.staffId);
    sql += ` AND staff_id = $${params.length}`;
  }
  if (filters.fraudFlag !== undefined) {
    params.push(filters.fraudFlag);
    sql += ` AND fraud_flag = $${params.length}`;
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

async function findById(id) {
  const result = await query(`SELECT * FROM production_batches WHERE id = $1`, [id]);
  return result.rows[0] || null;
}


async function findByStaffId(staffId, limit = 50) {
  const result = await query(
    `SELECT * FROM production_batches WHERE staff_id = $1 ORDER BY created_at DESC LIMIT $2`,
    [staffId, limit]
  );
  return result.rows;
}

async function getBranchYieldRate(branchId, days = 30) {
  const result = await query(
    `SELECT
       COALESCE(AVG(actual_units::float / NULLIF(expected_units, 0)), 0) AS avg_yield_rate
     FROM production_batches
     WHERE branch_id = $1 AND created_at >= NOW() - ($2 || ' days')::interval`,
    [branchId, days]
  );
  return parseFloat(result.rows[0]?.avg_yield_rate || 0);
}

module.exports = { createBatch, findAllByBranch, findById, findByStaffId, getBranchYieldRate };