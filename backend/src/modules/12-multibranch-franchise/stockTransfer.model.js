const { query } = require('../../config/db');

// Original functions kept as-is (other code may use them).
async function create({ fromBranchId, toBranchId, materialName, quantity, unit, initiatedBy }) {
  const result = await query(
    `INSERT INTO stock_transfers
      (from_branch_id, to_branch_id, material_name, quantity, unit, status, initiated_by, created_at, updated_at)
     VALUES ($1, $2, $3, $4, $5, 'pending', $6, NOW(), NOW())
     RETURNING *`,
    [fromBranchId, toBranchId, materialName, quantity, unit, initiatedBy]
  );
  return result.rows[0];
}

async function findById(id) {
  const result = await query(`SELECT * FROM stock_transfers WHERE id = $1`, [id]);
  return result.rows[0] || null;
}

async function findAllByBranch(branchId, direction) {
  const params = [branchId];
  let sql = `SELECT * FROM stock_transfers WHERE `;

  if (direction === 'outgoing') {
    sql += `from_branch_id = $1`;
  } else if (direction === 'incoming') {
    sql += `to_branch_id = $1`;
  } else {
    sql += `(from_branch_id = $1 OR to_branch_id = $1)`;
  }

  sql += ` ORDER BY created_at DESC`;
  const result = await query(sql, params);
  return result.rows;
}

async function updateStatus(id, status) {
  const result = await query(
    `UPDATE stock_transfers SET status = $2, updated_at = NOW() WHERE id = $1 RETURNING *`,
    [id, status]
  );
  return result.rows[0];
}

// NEW: all transfers touching any branch of an owner (owner view with no branch filter).
async function findAllForOwner(ownerId, direction) {
  const owned = `(SELECT id FROM branches WHERE owner_id = $1)`;
  let cond;
  if (direction === 'outgoing') cond = `from_branch_id IN ${owned}`;
  else if (direction === 'incoming') cond = `to_branch_id IN ${owned}`;
  else cond = `(from_branch_id IN ${owned} OR to_branch_id IN ${owned})`;
  const result = await query(
    `SELECT * FROM stock_transfers WHERE ${cond} ORDER BY created_at DESC`,
    [ownerId]
  );
  return result.rows;
}

module.exports = { create, findById, findAllByBranch, updateStatus, findAllForOwner };