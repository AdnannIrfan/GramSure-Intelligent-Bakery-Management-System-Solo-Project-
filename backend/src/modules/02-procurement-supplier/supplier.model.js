const { query } = require('../../config/db');

async function createSupplier({ name, contactPhone, branchId, notes }) {
  const result = await query(
    `INSERT INTO suppliers (name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price, created_at)
     VALUES ($1, $2, $3, $4, 100.0, 100.0, NOW())
     RETURNING *`,
    [name, contactPhone, branchId, notes || null]
  );
  return result.rows[0];
}

async function findAllSuppliers(branchId) {
  const result = await query(`SELECT * FROM suppliers WHERE branch_id = $1 ORDER BY name ASC`, [branchId]);
  return result.rows;
}

async function findSupplierById(id) {
  const result = await query(`SELECT * FROM suppliers WHERE id = $1`, [id]);
  return result.rows[0] || null;
}

async function updateSupplierScorecard(id, { accuracyDelta, priceDelta }) {
  const result = await query(
    `UPDATE suppliers
     SET scorecard_accuracy = GREATEST(0, LEAST(100, scorecard_accuracy + $2)),
         scorecard_price = GREATEST(0, LEAST(100, scorecard_price + $3)),
         updated_at = NOW()
     WHERE id = $1
     RETURNING *`,
    [id, accuracyDelta, priceDelta]
  );
  return result.rows[0];
}

async function createPurchaseOrder({ supplierId, branchId, items, expectedTotal, createdBy }) {
  const result = await query(
    `INSERT INTO purchase_orders
      (supplier_id, branch_id, items, expected_total, status, created_by, created_at)
     VALUES ($1, $2, $3, $4, 'pending', $5, NOW())
     RETURNING *`,
    [supplierId, branchId, JSON.stringify(items), expectedTotal, createdBy]
  );
  return result.rows[0];
}

async function findPurchaseOrderById(id) {
  const result = await query(`SELECT * FROM purchase_orders WHERE id = $1`, [id]);
  return result.rows[0] || null;
}

async function findAllPurchaseOrders(branchId, status) {
  const params = [branchId];
  let sql = `SELECT * FROM purchase_orders WHERE branch_id = $1`;
  if (status) {
    params.push(status);
    sql += ` AND status = $2`;
  }
  sql += ` ORDER BY created_at DESC`;
  const result = await query(sql, params);
  return result.rows;
}

async function updatePurchaseOrderStatus(id, status) {
  const result = await query(
    `UPDATE purchase_orders SET status = $2, updated_at = NOW() WHERE id = $1 RETURNING *`,
    [id, status]
  );
  return result.rows[0];
}

async function recordDelivery({ purchaseOrderId, actualItems, actualTotal, discrepancyFlag, recordedBy }) {
  const result = await query(
    `INSERT INTO deliveries
      (purchase_order_id, actual_items, actual_total, discrepancy_flag, recorded_by, created_at)
     VALUES ($1, $2, $3, $4, $5, NOW())
     RETURNING *`,
    [purchaseOrderId, JSON.stringify(actualItems), actualTotal, discrepancyFlag, recordedBy]
  );
  return result.rows[0];
}

/* ================= NEW IN MODULE 2 ================= */

async function logScorecardChange({ supplierId, purchaseOrderId, accuracyDelta, priceDelta, reason }) {
  await query(
    `INSERT INTO supplier_scorecard_history (supplier_id, purchase_order_id, accuracy_delta, price_delta, reason)
     VALUES ($1,$2,$3,$4,$5)`,
    [supplierId, purchaseOrderId, accuracyDelta, priceDelta, reason || null]
  );
}

async function findScorecards(branchId) {
  const result = await query(
    `SELECT s.id, s.name, s.contact_phone, s.credit_days, s.scorecard_accuracy, s.scorecard_price,
            ROUND((s.scorecard_accuracy + s.scorecard_price) / 2, 1) AS overall_score,
            (SELECT COUNT(*) FROM purchase_orders po WHERE po.supplier_id = s.id) AS total_orders,
            (SELECT COUNT(*) FROM purchase_orders po WHERE po.supplier_id = s.id AND po.status = 'discrepancy') AS discrepancy_orders
       FROM suppliers s
      WHERE s.branch_id = $1
      ORDER BY overall_score DESC, s.name ASC`,
    [branchId]
  );
  return result.rows;
}

async function findScorecardHistory(supplierId, limit = 50) {
  const result = await query(
    `SELECT * FROM supplier_scorecard_history WHERE supplier_id = $1 ORDER BY created_at DESC LIMIT $2`,
    [supplierId, limit]
  );
  return result.rows;
}

async function setCreditDays(supplierId, creditDays) {
  const result = await query(
    `UPDATE suppliers SET credit_days = $2, updated_at = NOW() WHERE id = $1 RETURNING *`,
    [supplierId, creditDays]
  );
  return result.rows[0] || null;
}

async function createInvoice({ purchaseOrderId, supplierId, branchId, invoiceNumber, invoiceDate, dueDate,
  amount, photoUrl, validationStatus, validationNote, createdBy }) {
  const result = await query(
    `INSERT INTO supplier_invoices
       (purchase_order_id, supplier_id, branch_id, invoice_number, invoice_date, due_date,
        amount, photo_url, validation_status, validation_note, created_by)
     VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11)
     RETURNING *`,
    [purchaseOrderId, supplierId, branchId, invoiceNumber, invoiceDate, dueDate,
      amount, photoUrl || null, validationStatus, validationNote || null, createdBy]
  );
  return result.rows[0];
}

async function findInvoiceById(id) {
  const result = await query(`SELECT * FROM supplier_invoices WHERE id = $1`, [id]);
  return result.rows[0] || null;
}

async function findInvoices(branchId, status) {
  const params = [branchId];
  let sql = `SELECT i.*, s.name AS supplier_name
               FROM supplier_invoices i JOIN suppliers s ON s.id = i.supplier_id
              WHERE i.branch_id = $1`;
  if (status) {
    params.push(status);
    sql += ` AND i.status = $2`;
  }
  sql += ` ORDER BY i.created_at DESC`;
  const result = await query(sql, params);
  return result.rows;
}

async function findLatestDeliveryByPo(purchaseOrderId) {
  const result = await query(
    `SELECT * FROM deliveries WHERE purchase_order_id = $1 ORDER BY created_at DESC LIMIT 1`,
    [purchaseOrderId]
  );
  return result.rows[0] || null;
}

async function findOutstanding(branchId) {
  const result = await query(
    `SELECT i.id, i.invoice_number, i.supplier_id, s.name AS supplier_name,
            i.amount, i.amount_paid, (i.amount - i.amount_paid) AS remaining,
            i.due_date, i.status, i.validation_status,
            (CURRENT_DATE - i.due_date) AS days_overdue
       FROM supplier_invoices i JOIN suppliers s ON s.id = i.supplier_id
      WHERE i.branch_id = $1 AND i.status <> 'paid'
      ORDER BY i.due_date ASC`,
    [branchId]
  );
  return result.rows;
}

async function findDueSoon(branchId, days) {
  const result = await query(
    `SELECT i.invoice_number, s.name AS supplier_name,
            (i.amount - i.amount_paid) AS remaining, (CURRENT_DATE - i.due_date) AS days_overdue
       FROM supplier_invoices i JOIN suppliers s ON s.id = i.supplier_id
      WHERE i.branch_id = $1 AND i.status <> 'paid' AND i.due_date <= CURRENT_DATE + $2::int
      ORDER BY i.due_date ASC`,
    [branchId, days]
  );
  return result.rows;
}

async function findBranchesWithUnpaidInvoices() {
  const result = await query(`SELECT DISTINCT branch_id FROM supplier_invoices WHERE status <> 'paid'`);
  return result.rows.map((r) => r.branch_id);
}

// Inserts the payment only if it does not overpay, and updates the invoice in the same statement.
async function recordPayment({ invoiceId, amount, method, overrideReason, paidBy }) {
  const result = await query(
    `WITH p AS (
       INSERT INTO supplier_payments (invoice_id, amount, method, override_reason, paid_by)
       SELECT id, $2::numeric, $3, $4, $5 FROM supplier_invoices
        WHERE id = $1 AND amount_paid + $2::numeric <= amount
       RETURNING id
     )
     UPDATE supplier_invoices
        SET amount_paid = amount_paid + $2::numeric,
            status = CASE WHEN amount_paid + $2::numeric >= amount THEN 'paid' ELSE 'partial' END
      WHERE id = $1 AND EXISTS (SELECT 1 FROM p)
      RETURNING *`,
    [invoiceId, amount, method, overrideReason || null, paidBy]
  );
  return result.rows[0] || null;
}

async function refreshPurchaseOrderPaymentStatus(purchaseOrderId) {
  await query(
    `UPDATE purchase_orders po
        SET payment_status = CASE
              WHEN NOT EXISTS (SELECT 1 FROM supplier_invoices WHERE purchase_order_id = po.id AND status <> 'paid')
                   AND EXISTS (SELECT 1 FROM supplier_invoices WHERE purchase_order_id = po.id) THEN 'paid'
              WHEN EXISTS (SELECT 1 FROM supplier_invoices WHERE purchase_order_id = po.id AND amount_paid > 0) THEN 'partial'
              ELSE 'unpaid' END,
            updated_at = NOW()
      WHERE po.id = $1`,
    [purchaseOrderId]
  );
}

module.exports = {
  createSupplier,
  findAllSuppliers,
  findSupplierById,
  updateSupplierScorecard,
  createPurchaseOrder,
  findPurchaseOrderById,
  findAllPurchaseOrders,
  updatePurchaseOrderStatus,
  recordDelivery,
  logScorecardChange,
  findScorecards,
  findScorecardHistory,
  setCreditDays,
  createInvoice,
  findInvoiceById,
  findInvoices,
  findLatestDeliveryByPo,
  findOutstanding,
  findDueSoon,
  findBranchesWithUnpaidInvoices,
  recordPayment,
  refreshPurchaseOrderPaymentStatus,
};