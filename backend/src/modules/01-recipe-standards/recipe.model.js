const { query } = require('../../config/db');



async function create({ productName, branchId, ingredients, flourQtyKg, expectedUnitsPerBatch, tolerancePercent, costPerUnit }) {
  const result = await query(
    `INSERT INTO recipes
      (product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch,
       tolerance_percent, cost_per_unit, version, is_active, created_at, updated_at)
     VALUES ($1, $2, $3, $4, $5, $6, $7, 1, true, NOW(), NOW())
     RETURNING *`,
    [productName, branchId, JSON.stringify(ingredients), flourQtyKg, expectedUnitsPerBatch, tolerancePercent, costPerUnit]
  );
  return result.rows[0];
}

async function findAllByBranch(branchId) {
  const result = await query(
    `SELECT * FROM recipes WHERE branch_id = $1 AND is_active = true ORDER BY product_name ASC`,
    [branchId]
  );
  return result.rows;
}

async function findById(id) {
  const result = await query(`SELECT * FROM recipes WHERE id = $1`, [id]);
  return result.rows[0] || null;
}

async function findActiveByProductName(productName, branchId) {
  const result = await query(
    `SELECT * FROM recipes WHERE product_name = $1 AND branch_id = $2 AND is_active = true LIMIT 1`,
    [productName, branchId]
  );
  return result.rows[0] || null;
}

function normalizeUpdates(updates) {
  const map = {
    productName: 'product_name',
    branchId: 'branch_id',
    ingredients: 'ingredients',
    flourQtyKg: 'flour_qty_kg',
    expectedUnitsPerBatch: 'expected_units_per_batch',
    tolerancePercent: 'tolerance_percent',
    costPerUnit: 'cost_per_unit',
  };
  const normalized = {};
  for (const [key, value] of Object.entries(updates)) {
    if (value === undefined) continue;
    const dbKey = map[key] || key;
    normalized[dbKey] = value;
  }
  return normalized;
}

async function createNewVersion(existingId, updates) {
  const existing = await findById(existingId);
  if (!existing) return null;

  await query(`UPDATE recipes SET is_active = false, updated_at = NOW() WHERE id = $1`, [existingId]);

  const normalizedUpdates = normalizeUpdates(updates);
  const merged = { ...existing, ...normalizedUpdates };

  const result = await query(
    `INSERT INTO recipes
      (product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch,
       tolerance_percent, cost_per_unit, version, is_active, created_at, updated_at)
     VALUES ($1, $2, $3, $4, $5, $6, $7, $8, true, NOW(), NOW())
     RETURNING *`,
    [
      merged.product_name,
      merged.branch_id,
      typeof merged.ingredients === 'string' ? merged.ingredients : JSON.stringify(merged.ingredients),
      merged.flour_qty_kg,
      merged.expected_units_per_batch,
      merged.tolerance_percent,
      merged.cost_per_unit,
      existing.version + 1,
    ]
  );
  return result.rows[0];
}

async function remove(id) {
  await query(`UPDATE recipes SET is_active = false, updated_at = NOW() WHERE id = $1`, [id]);
}

module.exports = { create, findAllByBranch, findById, findActiveByProductName, createNewVersion, remove };