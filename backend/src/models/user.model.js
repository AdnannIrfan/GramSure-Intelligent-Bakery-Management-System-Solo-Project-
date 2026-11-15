const { query } = require('../config/db');

async function findById(id) {
  const result = await query(
    `SELECT id, name, phone, role, branch_id, created_at, updated_at FROM users WHERE id = $1`,
    [id]
  );
  return result.rows[0] || null;
}

async function findByPhone(phone) {
  const result = await query(`SELECT * FROM users WHERE phone = $1`, [phone]);
  return result.rows[0] || null;
}

async function findAllByBranch(branchId, role) {
  const params = [branchId];
  let sql = `SELECT id, name, phone, role, branch_id, created_at FROM users WHERE branch_id = $1`;
  if (role) {
    params.push(role);
    sql += ` AND role = $${params.length}`;
  }
  sql += ` ORDER BY name ASC`;
  const result = await query(sql, params);
  return result.rows;
}

async function findOwners() {
  const result = await query(`SELECT id, name, phone, branch_id FROM users WHERE role = 'owner'`);
  return result.rows;
}

async function updateProfile(id, { name, phone }) {
  const result = await query(
    `UPDATE users SET name = COALESCE($2, name), phone = COALESCE($3, phone), updated_at = NOW()
     WHERE id = $1 RETURNING id, name, phone, role, branch_id`,
    [id, name, phone]
  );
  return result.rows[0];
}

async function deactivateUser(id) {
  await query(`UPDATE users SET is_active = false, updated_at = NOW() WHERE id = $1`, [id]);
}

module.exports = {
  findById,
  findByPhone,
  findAllByBranch,
  findOwners,
  updateProfile,
  deactivateUser,
};