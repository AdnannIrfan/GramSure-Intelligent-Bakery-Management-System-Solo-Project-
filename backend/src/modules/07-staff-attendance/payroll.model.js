const { query } = require('../../config/db');

// Counts days (in Pakistan time) with a completed shift, plus hours and unfinished shifts
async function getAttendanceSummary(userId, fromDate, toDate) {
  const result = await query(
    `SELECT
       COUNT(DISTINCT (check_in_time AT TIME ZONE 'Asia/Karachi')::date)
         FILTER (WHERE check_out_time IS NOT NULL) AS days_worked,
       COALESCE(
         SUM(EXTRACT(EPOCH FROM (check_out_time - check_in_time)) / 3600.0)
           FILTER (WHERE check_out_time IS NOT NULL), 0
       ) AS total_hours,
       COUNT(*) FILTER (WHERE check_out_time IS NULL) AS open_shifts
     FROM attendance_logs
     WHERE staff_id = $1
       AND (check_in_time AT TIME ZONE 'Asia/Karachi')::date BETWEEN $2::date AND $3::date`,
    [userId, fromDate, toDate]
  );
  return result.rows[0];
}

async function upsertSlip(slip) {
  const result = await query(
    `INSERT INTO salary_slips
      (user_id, branch_id, period_from, period_to, salary_type, salary_rate,
       days_worked, total_hours, gross_pay, deductions, net_pay, generated_by)
     VALUES ($1, $2, $3::date, $4::date, $5, $6, $7, $8, $9, $10, $11, $12)
     ON CONFLICT (user_id, period_from, period_to)
     DO UPDATE SET
       branch_id = EXCLUDED.branch_id,
       salary_type = EXCLUDED.salary_type,
       salary_rate = EXCLUDED.salary_rate,
       days_worked = EXCLUDED.days_worked,
       total_hours = EXCLUDED.total_hours,
       gross_pay = EXCLUDED.gross_pay,
       deductions = EXCLUDED.deductions,
       net_pay = EXCLUDED.net_pay,
       generated_by = EXCLUDED.generated_by,
       created_at = NOW()
     RETURNING *,
       to_char(period_from, 'YYYY-MM-DD') AS period_from_text,
       to_char(period_to, 'YYYY-MM-DD') AS period_to_text`,
    [
      slip.userId, slip.branchId, slip.fromDate, slip.toDate, slip.salaryType, slip.salaryRate,
      slip.daysWorked, slip.totalHours, slip.grossPay, slip.deductions, slip.netPay,
      slip.generatedBy || null,
    ]
  );
  return result.rows[0];
}

async function findSlipsByBranch(branchId, fromDate, toDate) {
  const result = await query(
    `SELECT s.*,
            to_char(s.period_from, 'YYYY-MM-DD') AS period_from_text,
            to_char(s.period_to, 'YYYY-MM-DD') AS period_to_text,
            u.name, sp.position
     FROM salary_slips s
     JOIN users u ON u.id = s.user_id
     LEFT JOIN staff_profiles sp ON sp.user_id = s.user_id
     WHERE s.branch_id = $1
       AND ($2::date IS NULL OR s.period_from >= $2::date)
       AND ($3::date IS NULL OR s.period_to <= $3::date)
     ORDER BY s.period_from DESC, u.name ASC`,
    [branchId, fromDate || null, toDate || null]
  );
  return result.rows;
}

async function findSlipsByUser(userId, limit) {
  const result = await query(
    `SELECT *,
            to_char(period_from, 'YYYY-MM-DD') AS period_from_text,
            to_char(period_to, 'YYYY-MM-DD') AS period_to_text
     FROM salary_slips WHERE user_id = $1 ORDER BY period_from DESC LIMIT $2`,
    [userId, limit]
  );
  return result.rows;
}

module.exports = { getAttendanceSummary, upsertSlip, findSlipsByBranch, findSlipsByUser };