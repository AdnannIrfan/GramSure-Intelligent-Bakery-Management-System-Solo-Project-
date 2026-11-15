const { query } = require('../../config/db');



async function findByMaterialAndBranch(materialName, branchId) {
  const result = await query(
    `SELECT * FROM stock_items WHERE material_name = $1 AND branch_id = $2`,
    [materialName, branchId]
  );
  return result.rows[0] || null;
}

async function findAllByBranch(branchId) {
  const result = await query(
    `SELECT * FROM stock_items WHERE branch_id = $1 ORDER BY material_name ASC`,
    [branchId]
  );
  return result.rows;
}

async function createStockItem({ materialName, branchId, quantity, unit, lowStockThreshold }) {
  const result = await query(
    `INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold, created_at, updated_at)
     VALUES ($1, $2, $3, $4, $5, NOW(), NOW())
     RETURNING *`,
    [materialName, branchId, quantity, unit, lowStockThreshold || 0]
  );
  return result.rows[0];
}

async function adjustQuantity(stockItemId, delta) {
  const result = await query(
    `UPDATE stock_items SET quantity = quantity + $2, updated_at = NOW() WHERE id = $1 RETURNING *`,
    [stockItemId, delta]
  );
  return result.rows[0];
}

async function recordMovement({ stockItemId, movementType, quantity, unitCost, referenceType, referenceId }) {
  const result = await query(
    `INSERT INTO stock_movements
      (stock_item_id, movement_type, quantity, unit_cost, reference_type, reference_id, created_at)
     VALUES ($1, $2, $3, $4, $5, $6, NOW())
     RETURNING *`,
    [stockItemId, movementType, quantity, unitCost || null, referenceType || null, referenceId || null]
  );
  return result.rows[0];
}


async function getFifoUnitCost(stockItemId) {
  const result = await query(
    `SELECT unit_cost FROM stock_movements
     WHERE stock_item_id = $1 AND movement_type = 'in' AND unit_cost IS NOT NULL
     ORDER BY created_at ASC LIMIT 1`,
    [stockItemId]
  );
  return result.rows[0]?.unit_cost ?? null;
}

async function findLowStockItems(branchId) {
  const result = await query(
    `SELECT * FROM stock_items WHERE branch_id = $1 AND quantity <= low_stock_threshold`,
    [branchId]
  );
  return result.rows;
}

module.exports = {
  findByMaterialAndBranch,
  findAllByBranch,
  createStockItem,
  adjustQuantity,
  recordMovement,
  getFifoUnitCost,
  findLowStockItems,
};