const { query } = require('../../config/db');



async function create({ branchId, type, title, message, referenceType, referenceId }) {
  const result = await query(
    `INSERT INTO notifications
      (branch_id, type, title, message, reference_type, reference_id, is_read, created_at)
     VALUES ($1, $2, $3, $4, $5, $6, false, NOW())
     RETURNING *`,
    [branchId, type, title, message, referenceType || null, referenceId || null]
  );
  return result.rows[0];
}

async function findAllByBranch(branchId, filters = {}) {
  const params = [branchId];
  let sql = `SELECT * FROM notifications WHERE branch_id = $1`;

  if (filters.isRead !== undefined) {
    params.push(filters.isRead);
    sql += ` AND is_read = $${params.length}`;
  }
  if (filters.type) {
    params.push(filters.type);
    sql += ` AND type = $${params.length}`;
  }
  sql += ` ORDER BY created_at DESC LIMIT 100`;
  const result = await query(sql, params);
  return result.rows;
}

async function markAsRead(id) {
  const result = await query(
    `UPDATE notifications SET is_read = true WHERE id = $1 RETURNING *`,
    [id]
  );
  return result.rows[0];
}

async function markAllAsRead(branchId) {
  await query(`UPDATE notifications SET is_read = true WHERE branch_id = $1 AND is_read = false`, [branchId]);
}

async function getUnreadCount(branchId) {
  const result = await query(
    `SELECT COUNT(*) AS count FROM notifications WHERE branch_id = $1 AND is_read = false`,
    [branchId]
  );
  return parseInt(result.rows[0].count, 10);
}

module.exports = { create, findAllByBranch, markAsRead, markAllAsRead, getUnreadCount };