const { query } = require('../../config/db');

async function createStaffProfile({ userId, branchId, position, salaryRate, salaryType, shiftSchedule }) {
  const result = await query(
    `INSERT INTO staff_profiles
      (user_id, branch_id, position, salary_rate, salary_type, shift_schedule, created_at, updated_at)
     VALUES ($1, $2, $3, $4, $5, $6, NOW(), NOW())
     RETURNING *`,
    [userId, branchId, position, salaryRate, salaryType, JSON.stringify(shiftSchedule || {})]
  );
  return result.rows[0];
}

// Creates the login and the profile in ONE statement, so it never leaves half a staff member behind.
// password_hash is the login password; pin_hash is the check-in PIN.
async function createUserWithProfile({
  userId, name, phone, passwordHash, pinHash, branchId, position, salaryRate, salaryType, shiftSchedule,
}) {
  const result = await query(
    `WITH new_user AS (
       INSERT INTO users (id, name, phone, password_hash, pin_hash, role, branch_id, created_at)
       VALUES ($1::uuid, $2::text, $3::text, $4::text, $5::text, 'staff', $6::uuid, NOW())
       RETURNING id, name, phone, role, branch_id
     ), new_profile AS (
       INSERT INTO staff_profiles
         (user_id, branch_id, position, salary_rate, salary_type, shift_schedule, created_at, updated_at)
       SELECT id, $6::uuid, $7::text, $8::numeric, $9::text, $10::jsonb, NOW(), NOW()
       FROM new_user
       RETURNING *
     )
     SELECT row_to_json(new_user) AS user_row, row_to_json(new_profile) AS profile_row
     FROM new_user, new_profile`,
    [
      userId, name, phone, passwordHash, pinHash, branchId,
      position, salaryRate, salaryType, JSON.stringify(shiftSchedule || {}),
    ]
  );
  return result.rows[0];
}

// Face data is deliberately left out of lists; only face_registered (true/false) is returned
async function findAllByBranch(branchId) {
  const result = await query(
    `SELECT sp.id, sp.user_id, sp.branch_id, sp.position, sp.salary_rate, sp.salary_type,
            sp.shift_schedule, sp.created_at, sp.updated_at,
            (sp.face_encoding IS NOT NULL) AS face_registered,
            u.name, u.phone, u.is_active
     FROM staff_profiles sp
     JOIN users u ON u.id = sp.user_id
     WHERE sp.branch_id = $1
     ORDER BY u.name ASC`,
    [branchId]
  );
  return result.rows;
}

async function findByUserId(userId) {
  const result = await query(`SELECT * FROM staff_profiles WHERE user_id = $1`, [userId]);
  return result.rows[0] || null;
}

async function findUserById(userId) {
  const result = await query(
    `SELECT id, name, branch_id, role, is_active FROM users WHERE id = $1`,
    [userId]
  );
  return result.rows[0] || null;
}

async function updateFaceEncoding(userId, faceEncoding) {
  const result = await query(
    `UPDATE staff_profiles SET face_encoding = $2, updated_at = NOW() WHERE user_id = $1 RETURNING *`,
    [userId, JSON.stringify(faceEncoding)]
  );
  return result.rows[0];
}

async function updateSalaryInfo(userId, { salaryRate, salaryType }) {
  const result = await query(
    `UPDATE staff_profiles SET salary_rate = $2, salary_type = $3, updated_at = NOW() WHERE user_id = $1 RETURNING *`,
    [userId, salaryRate, salaryType]
  );
  return result.rows[0];
}

async function updateShiftSchedule(userId, shiftSchedule) {
  const result = await query(
    `UPDATE staff_profiles SET shift_schedule = $2::jsonb, updated_at = NOW() WHERE user_id = $1 RETURNING *`,
    [userId, JSON.stringify(shiftSchedule)]
  );
  return result.rows[0];
}

async function setActive(userId, isActive) {
  const result = await query(
    `UPDATE users SET is_active = $2, updated_at = NOW() WHERE id = $1 RETURNING id, name, is_active`,
    [userId, isActive]
  );
  return result.rows[0];
}

module.exports = {
  createStaffProfile,
  createUserWithProfile,
  findAllByBranch,
  findByUserId,
  findUserById,
  updateFaceEncoding,
  updateSalaryInfo,
  updateShiftSchedule,
  setActive,
};