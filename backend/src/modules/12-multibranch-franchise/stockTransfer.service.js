// NEW FILE (Module 12 only). Transactional, race-safe stock transfers.
// Does NOT modify or call stock.service / stock.model; it writes the same
// tables (stock_items, stock_movements) with the same conventions.
const { getClient } = require('../../config/db');
const { sendWhatsAppMessage } = require('../../config/twilio');
const logger = require('../../utils/logger');

const UUID_RE = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
const OPEN_STATUSES = ['pending', 'in_transit'];

function httpError(statusCode, message) {
  const err = new Error(message);
  err.statusCode = statusCode;
  return err;
}

async function withTransaction(fn) {
  const client = await getClient();
  try {
    await client.query('BEGIN');
    const result = await fn(client);
    await client.query('COMMIT');
    return result;
  } catch (err) {
    try { await client.query('ROLLBACK'); } catch (_) { /* ignore */ }
    throw err;
  } finally {
    client.release();
  }
}

function parseQuantity(q) {
  const n = Number(q);
  if (!Number.isFinite(n) || n <= 0) throw httpError(400, 'quantity must be a positive number');
  if (Math.round(n * 1000) / 1000 !== n) throw httpError(400, 'quantity supports at most 3 decimal places');
  if (n >= 1e9) throw httpError(400, 'quantity is too large');
  return n;
}

function assertUuid(value, field) {
  if (!UUID_RE.test(String(value || ''))) throw httpError(400, `${field} must be a valid id`);
}

async function loadBranches(client, ids) {
  const res = await client.query(
    `SELECT id, owner_id, is_active FROM branches WHERE id = ANY($1::uuid[])`,
    [ids]
  );
  const map = {};
  res.rows.forEach((r) => { map[r.id] = r; });
  return map;
}

async function getSourceCost(client, stockItemId) {
  const res = await client.query(
    `SELECT unit_cost FROM stock_movements
     WHERE stock_item_id = $1 AND movement_type = 'in' AND unit_cost IS NOT NULL
     ORDER BY created_at ASC LIMIT 1`,
    [stockItemId]
  );
  return res.rows[0] ? res.rows[0].unit_cost : null;
}

async function getTransferOutCost(client, transferId) {
  const res = await client.query(
    `SELECT unit_cost FROM stock_movements
     WHERE reference_type = 'stock_transfer_out' AND reference_id = $1 LIMIT 1`,
    [transferId]
  );
  return res.rows[0] ? res.rows[0].unit_cost : null;
}

// Adds stock to a branch (creating the item if needed) and writes the ledger row.
async function addStock(client, { materialName, branchId, unit, quantity, unitCost, referenceType, referenceId }) {
  const item = await client.query(
    `INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
     VALUES ($1, $2, 0, $3, 0)
     ON CONFLICT (material_name, branch_id) DO UPDATE SET updated_at = NOW()
     RETURNING id, unit`,
    [materialName, branchId, unit]
  );
  const row = item.rows[0];
  if (row.unit !== unit) {
    throw httpError(409, `Unit mismatch for "${materialName}": destination uses "${row.unit}", transfer uses "${unit}"`);
  }
  await client.query(
    `UPDATE stock_items SET quantity = quantity + $2::numeric WHERE id = $1`,
    [row.id, quantity]
  );
  await client.query(
    `INSERT INTO stock_movements (stock_item_id, movement_type, quantity, unit_cost, reference_type, reference_id)
     VALUES ($1, 'in', $2, $3, $4, $5)`,
    [row.id, quantity, unitCost, referenceType, referenceId]
  );
}

async function initiateTransfer({ fromBranchId, toBranchId, materialName, quantity, actor }) {
  assertUuid(fromBranchId, 'fromBranchId');
  assertUuid(toBranchId, 'toBranchId');
  if (fromBranchId === toBranchId) throw httpError(400, 'Source and destination branch must be different');
  const qty = parseQuantity(quantity);
  const material = String(materialName || '').trim();
  if (!material) throw httpError(400, 'materialName is required');

  const { transfer, lowStock } = await withTransaction(async (client) => {
    const branches = await loadBranches(client, [fromBranchId, toBranchId]);
    const from = branches[fromBranchId];
    const to = branches[toBranchId];
    if (!from) throw httpError(404, 'Source branch not found');
    if (!to) throw httpError(404, 'Destination branch not found');
    if (!from.is_active || !to.is_active) throw httpError(400, 'Both branches must be active');
    if (from.owner_id !== to.owner_id) throw httpError(400, 'Branches must belong to the same owner');

    if (actor.role === 'owner') {
      if (from.owner_id !== actor.id) throw httpError(403, 'You do not own these branches');
    } else if (String(actor.branchId) !== fromBranchId) {
      throw httpError(403, 'You can only transfer stock out of your own branch');
    }

    // Single atomic statement: no check-then-update race, no negative stock.
    const dec = await client.query(
      `UPDATE stock_items SET quantity = quantity - $3::numeric
       WHERE branch_id = $1 AND material_name = $2 AND quantity >= $3::numeric
       RETURNING id, material_name, unit, quantity, low_stock_threshold`,
      [fromBranchId, material, qty]
    );
    if (!dec.rows[0]) {
      const existing = await client.query(
        `SELECT quantity FROM stock_items WHERE branch_id = $1 AND material_name = $2`,
        [fromBranchId, material]
      );
      if (!existing.rows[0]) throw httpError(404, `Stock item "${material}" not found in source branch`);
      throw httpError(400, `Insufficient stock for "${material}": have ${existing.rows[0].quantity}, need ${qty}`);
    }
    const item = dec.rows[0];
    const unitCost = await getSourceCost(client, item.id);

    const ins = await client.query(
      `INSERT INTO stock_transfers
         (from_branch_id, to_branch_id, material_name, quantity, unit, status, initiated_by)
       VALUES ($1, $2, $3, $4, $5, 'pending', $6)
       RETURNING *`,
      [fromBranchId, toBranchId, item.material_name, qty, item.unit, actor.id]
    );
    const created = ins.rows[0];

    await client.query(
      `INSERT INTO stock_movements (stock_item_id, movement_type, quantity, unit_cost, reference_type, reference_id)
       VALUES ($1, 'out', $2, $3, 'stock_transfer_out', $4)`,
      [item.id, qty, unitCost, created.id]
    );

    return {
      transfer: created,
      lowStock: Number(item.quantity) <= Number(item.low_stock_threshold) ? item : null,
    };
  });

  // After commit, and never allowed to fail the transfer.
  if (lowStock) {
    try {
      await sendWhatsAppMessage(
        `📦 Low stock alert: ${lowStock.material_name} is at ${lowStock.quantity}${lowStock.unit} (threshold: ${lowStock.low_stock_threshold}${lowStock.unit})`
      );
    } catch (err) {
      logger.warn(`Low-stock alert failed after transfer: ${err.message}`);
    }
  }
  return transfer;
}

async function lockTransfer(client, id) {
  assertUuid(id, 'transfer id');
  const res = await client.query(`SELECT * FROM stock_transfers WHERE id = $1 FOR UPDATE`, [id]);
  const t = res.rows[0];
  if (!t) throw httpError(404, 'Transfer not found');
  if (!OPEN_STATUSES.includes(t.status)) throw httpError(409, `Transfer is already ${t.status}`);
  return t;
}

async function completeTransfer({ id, actor }) {
  return withTransaction(async (client) => {
    const t = await lockTransfer(client, id);
    const branches = await loadBranches(client, [t.from_branch_id, t.to_branch_id]);
    const to = branches[t.to_branch_id];
    if (!to || !to.is_active) throw httpError(400, 'Destination branch is not active');

    if (actor.role === 'owner') {
      if (to.owner_id !== actor.id) throw httpError(403, 'You do not own this branch');
    } else if (String(actor.branchId) !== t.to_branch_id) {
      throw httpError(403, 'Only the receiving branch can complete this transfer');
    }

    const unitCost = await getTransferOutCost(client, t.id);
    await addStock(client, {
      materialName: t.material_name,
      branchId: t.to_branch_id,
      unit: t.unit,
      quantity: t.quantity,
      unitCost,
      referenceType: 'stock_transfer_in',
      referenceId: t.id,
    });

    const upd = await client.query(
      `UPDATE stock_transfers SET status = 'completed' WHERE id = $1 RETURNING *`, [t.id]
    );
    return upd.rows[0];
  });
}

async function cancelTransfer({ id, actor }) {
  return withTransaction(async (client) => {
    const t = await lockTransfer(client, id);
    const branches = await loadBranches(client, [t.from_branch_id]);
    const from = branches[t.from_branch_id];

    if (actor.role === 'owner') {
      if (!from || from.owner_id !== actor.id) throw httpError(403, 'You do not own this branch');
    } else if (String(actor.branchId) !== t.from_branch_id) {
      throw httpError(403, 'Only the sending branch can cancel this transfer');
    }

    const unitCost = await getTransferOutCost(client, t.id);
    await addStock(client, {
      materialName: t.material_name,
      branchId: t.from_branch_id,
      unit: t.unit,
      quantity: t.quantity,
      unitCost,
      referenceType: 'stock_transfer_cancel',
      referenceId: t.id,
    });

    const upd = await client.query(
      `UPDATE stock_transfers SET status = 'cancelled' WHERE id = $1 RETURNING *`, [t.id]
    );
    return upd.rows[0];
  });
}

module.exports = { initiateTransfer, completeTransfer, cancelTransfer, UUID_RE, httpError };