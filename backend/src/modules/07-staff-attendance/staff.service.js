const staffModel = require('./staff.model');
const bcrypt = require('bcryptjs');
const { query } = require('../../config/db');
const { v4: uuidv4 } = require('uuid');

const SALT_ROUNDS = 10;
const PIN_REGEX = /^\d{4,6}$/;
const MIN_PASSWORD_LENGTH = 6;
const VALID_SALARY_TYPES = ['daily', 'monthly'];
const UUID_REGEX = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

function httpError(message, statusCode) {
  const err = new Error(message);
  err.statusCode = statusCode;
  return err;
}

function withoutFace(profile) {
  if (!profile) return profile;
  const { face_encoding, ...rest } = profile;
  return { ...rest, face_registered: face_encoding != null };
}

// password = what the staff member types on the login screen
// pin      = what they type for check-in inside the app (4 to 6 digits)
async function createStaffProfile({
  branchId, name, phone, password, pin, position, salaryRate, salaryType, shiftSchedule,
}) {
  if (!name || !phone || !password || !pin || !position || !salaryRate) {
    throw httpError('name, phone, password, pin, position, and salaryRate are required', 400);
  }

  const cleanPassword = String(password);
  if (cleanPassword.length < MIN_PASSWORD_LENGTH) {
    throw httpError(`Password must be at least ${MIN_PASSWORD_LENGTH} characters`, 400);
  }

  const cleanPin = String(pin);
  if (!PIN_REGEX.test(cleanPin)) {
    throw httpError('PIN must be 4 to 6 digits', 400);
  }

  const rate = Number(salaryRate);
  if (!Number.isFinite(rate) || rate <= 0) {
    throw httpError('salaryRate must be a number greater than 0', 400);
  }

  const type = salaryType || 'daily';
  if (!VALID_SALARY_TYPES.includes(type)) {
    throw httpError('salaryType must be "daily" or "monthly"', 400);
  }

  const cleanPhone = String(phone).trim();
  const existing = await query('SELECT id FROM users WHERE phone = $1', [cleanPhone]);
  if (existing.rows.length > 0) {
    throw httpError('A user with this phone number already exists', 409);
  }

  const passwordHash = await bcrypt.hash(cleanPassword, SALT_ROUNDS);
  const pinHash = await bcrypt.hash(cleanPin, SALT_ROUNDS);
  const userId = uuidv4();

  const row = await staffModel.createUserWithProfile({
    userId,
    name: String(name).trim(),
    phone: cleanPhone,
    passwordHash,
    pinHash,
    branchId,
    position: String(position).trim(),
    salaryRate: rate,
    salaryType: type,
    shiftSchedule,
  });

  return { ...row.user_row, profile: withoutFace(row.profile_row) };
}

async function getStaffForBranch(branchId) {
  return staffModel.findAllByBranch(branchId);
}

async function getStaffProfile(userId) {
  const profile = await staffModel.findByUserId(userId);
  if (!profile) {
    throw httpError('Staff profile not found', 404);
  }
  return profile;
}

// Basic user info (including branch) - used to check a manager only touches their own branch
async function getUserBranch(userId) {
  if (!UUID_REGEX.test(String(userId))) {
    throw httpError('Staff member not found', 404);
  }
  const user = await staffModel.findUserById(userId);
  if (!user) {
    throw httpError('Staff member not found', 404);
  }
  return user;
}

async function updateSalary(userId, salaryRate, salaryType) {
  const rate = Number(salaryRate);
  if (!Number.isFinite(rate) || rate <= 0) {
    throw httpError('salaryRate must be a number greater than 0', 400);
  }
  if (!VALID_SALARY_TYPES.includes(salaryType)) {
    throw httpError('salaryType must be "daily" or "monthly"', 400);
  }
  const updated = await staffModel.updateSalaryInfo(userId, { salaryRate: rate, salaryType });
  if (!updated) throw httpError('Staff profile not found', 404);
  return withoutFace(updated);
}

async function updateShiftSchedule(userId, shiftSchedule) {
  if (!shiftSchedule || typeof shiftSchedule !== 'object') {
    throw httpError('shiftSchedule must be an object, e.g. {"monday":"morning"}', 400);
  }
  const updated = await staffModel.updateShiftSchedule(userId, shiftSchedule);
  if (!updated) throw httpError('Staff profile not found', 404);
  return withoutFace(updated);
}

async function setStaffActive(userId, isActive) {
  const user = await getUserBranch(userId);
  if (user.role === 'owner') {
    throw httpError('The owner account cannot be deactivated', 403);
  }
  return staffModel.setActive(userId, !!isActive);
}

// Checks the check-in PIN. Staff created before the separate PIN existed have no pin_hash,
// so for them the login password is used as the PIN (until the owner gives them a PIN).
async function verifyPin(userId, pin) {
  const result = await query(
    'SELECT pin_hash, password_hash, is_active FROM users WHERE id = $1',
    [userId]
  );
  if (result.rows.length === 0) return false;
  const row = result.rows[0];
  if (row.is_active === false) return false;
  const hashToCheck = row.pin_hash || row.password_hash;
  return bcrypt.compare(String(pin), hashToCheck);
}

module.exports = {
  createStaffProfile,
  getStaffForBranch,
  getStaffProfile,
  getUserBranch,
  updateSalary,
  updateShiftSchedule,
  setStaffActive,
  verifyPin,
};