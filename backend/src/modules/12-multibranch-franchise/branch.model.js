const { query } = require('../../config/db');

async function create({ name, address, ownerId }) {
  const result = await query(
    `INSERT INTO branches (name, address, owner_id, is_active, created_at, updated_at)
     VALUES ($1, $2, $3, true, NOW(), NOW())
     RETURNING *`,
    [name, address, ownerId]
  );
  return result.rows[0];
}

async function findAllByOwner(ownerId) {
  const result = await query(
    `SELECT * FROM branches WHERE owner_id = $1 AND is_active = true ORDER BY name ASC`,
    [ownerId]
  );
  return result.rows;
}

async function findById(id) {
  const result = await query(`SELECT * FROM branches WHERE id = $1`, [id]);
  return result.rows[0] || null;
}

async function update(id, { name, address }) {
  const result = await query(
    `UPDATE branches SET name = COALESCE($2, name), address = COALESCE($3, address), updated_at = NOW()
     WHERE id = $1 RETURNING *`,
    [id, name, address]
  );
  return result.rows[0];
}

async function deactivate(id) {
  await query(`UPDATE branches SET is_active = false, updated_at = NOW() WHERE id = $1`, [id]);
}

// ---- NEW owner-scoped variants (originals above are kept for other callers) ----

async function findByIdForOwner(id, ownerId) {
  const result = await query(`SELECT * FROM branches WHERE id = $1 AND owner_id = $2`, [id, ownerId]);
  return result.rows[0] || null;
}

async function updateForOwner(id, ownerId, { name, address }) {
  const result = await query(
    `UPDATE branches SET name = COALESCE($3, name), address = COALESCE($4, address), updated_at = NOW()
     WHERE id = $1 AND owner_id = $2 RETURNING *`,
    [id, ownerId, name ?? null, address ?? null]
  );
  return result.rows[0] || null;
}

async function deactivateForOwner(id, ownerId) {
  const result = await query(
    `UPDATE branches SET is_active = false, updated_at = NOW()
     WHERE id = $1 AND owner_id = $2 RETURNING id`,
    [id, ownerId]
  );
  return result.rowCount > 0;
}

async function countOpenTransfers(branchId) {
  const result = await query(
    `SELECT COUNT(*)::int AS n FROM stock_transfers
     WHERE (from_branch_id = $1 OR to_branch_id = $1) AND status IN ('pending','in_transit')`,
    [branchId]
  );
  return result.rows[0].n;
}

// Same columns as before (branch_id, branch_name, total_revenue, open_fraud_flags) plus
// benchmarking metrics. Each metric is aggregated in its own subquery, so joins no longer
// multiply rows (the old query inflated revenue when a branch had several fraud alerts).
async function getConsolidatedPerformance(ownerId) {
  const result = await query(
    `SELECT
       b.id AS branch_id,
       b.name AS branch_name,
       COALESCE(s.total_revenue, 0) AS total_revenue,
       COALESCE(s.units_sold, 0) AS units_sold,
       COALESCE(f.open_fraud_flags, 0) AS open_fraud_flags,
       COALESCE(p.batch_count, 0) AS batch_count,
       COALESCE(p.flagged_batches, 0) AS flagged_batches,
       COALESCE(p.units_produced, 0) AS units_produced,
       p.avg_abs_variance
     FROM branches b
     LEFT JOIN (
       SELECT branch_id, SUM(amount) AS total_revenue, SUM(units_sold) AS units_sold
       FROM sales
       WHERE created_at >= NOW() - INTERVAL '30 days'
       GROUP BY branch_id
     ) s ON s.branch_id = b.id
     LEFT JOIN (
       SELECT branch_id, COUNT(*) FILTER (WHERE status = 'open') AS open_fraud_flags
       FROM fraud_alerts
       GROUP BY branch_id
     ) f ON f.branch_id = b.id
     LEFT JOIN (
       SELECT branch_id,
              COUNT(*) AS batch_count,
              COUNT(*) FILTER (WHERE fraud_flag = true) AS flagged_batches,
              SUM(actual_units) AS units_produced,
              AVG(ABS(variance_percent)) AS avg_abs_variance
       FROM production_batches
       WHERE created_at >= NOW() - INTERVAL '30 days'
       GROUP BY branch_id
     ) p ON p.branch_id = b.id
     WHERE b.owner_id = $1 AND b.is_active = true
     ORDER BY total_revenue DESC`,
    [ownerId]
  );
  return result.rows;
}

module.exports = {
  create, findAllByOwner, findById, update, deactivate,
  findByIdForOwner, updateForOwner, deactivateForOwner, countOpenTransfers,
  getConsolidatedPerformance,
};