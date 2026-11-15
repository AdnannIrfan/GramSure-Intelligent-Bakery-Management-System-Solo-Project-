const { Pool } = require('pg');
const env = require('./env');
const logger = require('../utils/logger');

const pool = new Pool({
  host: env.db.host,
  port: env.db.port,
  database: env.db.name,
  user: env.db.user,
  password: env.db.password,
  ssl: env.db.ssl ? { rejectUnauthorized: false } : false,
  max: 20,
  idleTimeoutMillis: 30000,
  connectionTimeoutMillis: 5000,
});

pool.on('error', (err) => {
  logger.error(`Unexpected PostgreSQL error: ${err.message}`);
});

async function query(text, params) {
  const start = Date.now();
  const result = await pool.query(text, params);
  const duration = Date.now() - start;
  if (duration > 200) {
    logger.warn(`Slow query (${duration}ms): ${text}`);
  }
  return result;
}

async function getClient() {
  const client = await pool.connect();
  return client;
}

async function testConnection() {
  try {
    await pool.query('SELECT NOW()');
    logger.info('PostgreSQL connected successfully');
  } catch (err) {
    logger.error(`PostgreSQL connection failed: ${err.message}`);
    throw err;
  }
}

module.exports = { pool, query, getClient, testConnection };