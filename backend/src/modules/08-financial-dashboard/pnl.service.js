const { query } = require('../../config/db');
const saleService = require('../05-sales-revenue/sale.service');



async function getPnLForDate(branchId, date) {
  const revenue = await saleService.getTotalRevenueForDate(branchId, date);

  const cogsResult = await query(
    `SELECT COALESCE(SUM(pb.actual_units * r.cost_per_unit), 0) AS cogs
     FROM production_batches pb
     JOIN recipes r ON r.id = pb.recipe_id
     WHERE pb.branch_id = $1 AND (pb.created_at AT TIME ZONE 'Asia/Karachi')::date = $2::date`,
    [branchId, date]
  );
  const cogs = parseFloat(cogsResult.rows[0].cogs);

  const expensesResult = await query(
    `SELECT COALESCE(SUM(amount), 0) AS total
     FROM expenses
     WHERE branch_id = $1 AND status = 'approved' AND (created_at AT TIME ZONE 'Asia/Karachi')::date = $2::date`,
    [branchId, date]
  );
  const expenses = parseFloat(expensesResult.rows[0].total);

  const salariesResult = await query(
    `SELECT COALESCE(SUM(sp.salary_rate), 0) AS total
     FROM attendance_logs al
     JOIN staff_profiles sp ON sp.user_id = al.staff_id
     WHERE al.branch_id = $1 AND (al.check_in_time AT TIME ZONE 'Asia/Karachi')::date = $2::date
       AND al.check_out_time IS NOT NULL AND sp.salary_type = 'daily'`,
    [branchId, date]
  );
  const salaries = parseFloat(salariesResult.rows[0].total);

  const netProfit = revenue - cogs - expenses - salaries;

  return {
    date: typeof date === 'string' ? date : date.toISOString().split('T')[0],
    revenue,
    cogs,
    expenses,
    salaries,
    netProfit,
  };
}

async function getPnLForRange(branchId, fromDate, toDate) {
  const result = await query(
    `SELECT generate_series($1::date, $2::date, '1 day')::date AS day`,
    [fromDate, toDate]
  );

  const pnlByDay = [];
  for (const row of result.rows) {
    const pnl = await getPnLForDate(branchId, row.day);
    pnlByDay.push(pnl);
  }
  return pnlByDay;
}


async function getProductWiseMargins(branchId) {
  const result = await query(
    `SELECT
       s.product_name,
       COALESCE(SUM(s.amount), 0) AS revenue,
       COALESCE(SUM(s.units_sold * r.cost_per_unit), 0) AS cogs
     FROM sales s
     LEFT JOIN recipes r ON r.product_name = s.product_name AND r.branch_id = s.branch_id AND r.is_active = true
     WHERE s.branch_id = $1
     GROUP BY s.product_name
     ORDER BY revenue DESC`,
    [branchId]
  );

  return result.rows.map((row) => ({
    productName: row.product_name,
    revenue: parseFloat(row.revenue),
    cogs: parseFloat(row.cogs),
    margin: parseFloat(row.revenue) - parseFloat(row.cogs),
    marginPercent: row.revenue > 0 ? ((row.revenue - row.cogs) / row.revenue) * 100 : 0,
  }));
}

module.exports = { getPnLForDate, getPnLForRange, getProductWiseMargins };