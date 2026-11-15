const { query } = require('../../config/db');

async function checkIn({ staffId, branchId, checkInMethod, faceMatchScore, shift, selfiePath }) {
  const result = await query(
    `INSERT INTO attendance_logs
      (staff_id, branch_id, check_in_time, check_in_method, face_match_score, shift, selfie_path, created_at)
     VALUES ($1, $2, NOW(), $3, $4, $5, $6, NOW())
     RETURNING *`,
    [
      staffId,
      branchId,
      checkInMethod,
      faceMatchScore == null ? null : faceMatchScore,
      shift || null,
      selfiePath || null,
    ]
  );
  return result.rows[0];
}

async function checkOut(attendanceLogId) {
  const result = await query(
    `UPDATE attendance_logs SET check_out_time = NOW() WHERE id = $1 RETURNING *`,
    [attendanceLogId]
  );
  return result.rows[0];
}

// Used for force check-out. branchId may be null (owner can close any branch).
async function checkOutById(attendanceLogId, branchId) {
  const result = await query(
    `UPDATE attendance_logs
     SET check_out_time = NOW()
     WHERE id = $1
       AND check_out_time IS NULL
       AND ($2::uuid IS NULL OR branch_id = $2::uuid)
     RETURNING *`,
    [attendanceLogId, branchId || null]
  );
  return result.rows[0] || null;
}

async function findOpenAttendanceForStaff(staffId) {
  const result = await query(
    `SELECT * FROM attendance_logs
     WHERE staff_id = $1 AND check_out_time IS NULL
     ORDER BY check_in_time DESC LIMIT 1`,
    [staffId]
  );
  return result.rows[0] || null;
}

// date is YYYY-MM-DD, matched in Pakistan time
async function findAllByBranchAndDate(branchId, date) {
  const result = await query(
    `SELECT al.*, u.name FROM attendance_logs al
     JOIN users u ON u.id = al.staff_id
     WHERE al.branch_id = $1
       AND (al.check_in_time AT TIME ZONE 'Asia/Karachi')::date = $2::date
     ORDER BY al.check_in_time DESC`,
    [branchId, date]
  );
  return result.rows;
}

async function findByStaffAndDateRange(staffId, fromDate, toDate) {
  const result = await query(
    `SELECT * FROM attendance_logs
     WHERE staff_id = $1 AND check_in_time >= $2 AND check_in_time <= $3
     ORDER BY check_in_time ASC`,
    [staffId, fromDate, toDate]
  );
  return result.rows;
}

async function getLiveAttendanceStatus(branchId) {
  const result = await query(
    `SELECT al.id AS attendance_id, al.staff_id, u.name, al.check_in_time, al.shift,
            al.check_in_method, al.face_match_score, al.selfie_path
     FROM attendance_logs al
     JOIN users u ON u.id = al.staff_id
     WHERE al.branch_id = $1 AND al.check_out_time IS NULL
     ORDER BY al.check_in_time DESC`,
    [branchId]
  );
  return result.rows;
}

async function logAttempt({ staffId, branchId, method, eventType, faceMatchScore, details, selfiePath }) {
  await query(
    `INSERT INTO attendance_attempts
      (staff_id, branch_id, method, event_type, face_match_score, details, selfie_path)
     VALUES ($1, $2, $3, $4, $5, $6, $7)`,
    [
      staffId || null,
      branchId || null,
      method || null,
      eventType,
      faceMatchScore == null ? null : faceMatchScore,
      details || null,
      selfiePath || null,
    ]
  );
}

async function countRecentAttempts(staffId, eventType, minutes) {
  const result = await query(
    `SELECT COUNT(*)::int AS count FROM attendance_attempts
     WHERE staff_id = $1 AND event_type = $2
       AND created_at > NOW() - make_interval(mins => $3::int)`,
    [staffId, eventType, minutes]
  );
  return result.rows[0].count;
}

async function listAttemptsByBranch(branchId, limit) {
  const result = await query(
    `SELECT a.*, u.name
     FROM attendance_attempts a
     LEFT JOIN users u ON u.id = a.staff_id
     WHERE a.branch_id = $1
     ORDER BY a.created_at DESC
     LIMIT $2`,
    [branchId, limit]
  );
  return result.rows;
}

async function findStaffName(staffId) {
  const result = await query(`SELECT name FROM users WHERE id = $1`, [staffId]);
  return result.rows[0] ? result.rows[0].name : null;
}

module.exports = {
  checkIn,
  checkOut,
  checkOutById,
  findOpenAttendanceForStaff,
  findAllByBranchAndDate,
  findByStaffAndDateRange,
  getLiveAttendanceStatus,
  logAttempt,
  countRecentAttempts,
  listAttemptsByBranch,
  findStaffName,
};