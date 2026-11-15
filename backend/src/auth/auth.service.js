const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const { v4: uuidv4 } = require('uuid');
const { query } = require('../config/db');
const env = require('../config/env');
const logger = require('../utils/logger');

const SALT_ROUNDS = 10;


async function registerUser({ name, phone, password, role, branchId }) {
  const existing = await query('SELECT id FROM users WHERE phone = $1', [phone]);
  if (existing.rows.length > 0) {
    const err = new Error('A user with this phone number already exists');
    err.statusCode = 409;
    throw err;
  }

  const passwordHash = await bcrypt.hash(password, SALT_ROUNDS);
  const id = uuidv4();

  const result = await query(
    `INSERT INTO users (id, name, phone, password_hash, role, branch_id, created_at)
     VALUES ($1, $2, $3, $4, $5, $6, NOW())
     RETURNING id, name, phone, role, branch_id, created_at`,
    [id, name, phone, passwordHash, role, branchId || null]
  );

  logger.info(`New user registered: ${phone} (${role})`);
  return result.rows[0];
}


async function loginUser({ phone, password }) {
  const result = await query(
    'SELECT id, name, phone, password_hash, role, branch_id FROM users WHERE phone = $1',
    [phone]
  );

  if (result.rows.length === 0) {
    const err = new Error('Invalid phone number or password');
    err.statusCode = 401;
    throw err;
  }

  const user = result.rows[0];
  const isMatch = await bcrypt.compare(password, user.password_hash);
  if (!isMatch) {
    const err = new Error('Invalid phone number or password');
    err.statusCode = 401;
    throw err;
  }

  const tokens = generateTokens(user);
  delete user.password_hash;

  return { user, ...tokens };
}


function generateTokens(user) {
  const payload = {
    sub: user.id,
    role: user.role,
    branchId: user.branch_id,
  };

  const accessToken = jwt.sign(payload, env.jwt.secret, {
    expiresIn: env.jwt.expiresIn,
  });

  const refreshToken = jwt.sign(payload, env.jwt.refreshSecret, {
    expiresIn: env.jwt.refreshExpiresIn,
  });

  return { accessToken, refreshToken };
}


async function refreshAccessToken(refreshToken) {
  let decoded;
  try {
    decoded = jwt.verify(refreshToken, env.jwt.refreshSecret);
  } catch (err) {
    const e = new Error('Invalid or expired refresh token');
    e.statusCode = 401;
    throw e;
  }

  const result = await query('SELECT id, role, branch_id FROM users WHERE id = $1', [decoded.sub]);
  if (result.rows.length === 0) {
    const err = new Error('User no longer exists');
    err.statusCode = 401;
    throw err;
  }

  const user = result.rows[0];
  const accessToken = jwt.sign(
    { sub: user.id, role: user.role, branchId: user.branch_id },
    env.jwt.secret,
    { expiresIn: env.jwt.expiresIn }
  );

  return { accessToken };
}

module.exports = { registerUser, loginUser, refreshAccessToken, generateTokens };