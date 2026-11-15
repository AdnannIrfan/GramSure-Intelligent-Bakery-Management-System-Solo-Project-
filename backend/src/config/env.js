require('dotenv').config();

function required(key, fallback = undefined) {
  const value = process.env[key] ?? fallback;
  if (value === undefined) {
    throw new Error(`Missing required environment variable: ${key}`);
  }
  return value;
}

const env = {
  nodeEnv: process.env.NODE_ENV || 'development',
  port: parseInt(process.env.PORT || '5000', 10),
  clientUrl: process.env.CLIENT_URL || 'http://localhost:5173',

  db: {
    host: required('DB_HOST', 'localhost'),
    port: parseInt(process.env.DB_PORT || '5432', 10),
    name: required('DB_NAME', 'gramsure'),
    user: required('DB_USER', 'postgres'),
    password: process.env.DB_PASSWORD || '',
    ssl: process.env.DB_SSL === 'true',
  },

  jwt: {
    secret: required('JWT_SECRET', 'dev_secret_change_me'),
    expiresIn: process.env.JWT_EXPIRES_IN || '7d',
    refreshSecret: required('JWT_REFRESH_SECRET', 'dev_refresh_secret_change_me'),
    refreshExpiresIn: process.env.JWT_REFRESH_EXPIRES_IN || '30d',
  },

  // Needed by config/firebase.js (reads empty values, harmless)
  firebase: {
    projectId: process.env.FIREBASE_PROJECT_ID,
    clientEmail: process.env.FIREBASE_CLIENT_EMAIL,
    privateKey: process.env.FIREBASE_PRIVATE_KEY
      ? process.env.FIREBASE_PRIVATE_KEY.replace(/\\n/g, '\n')
      : undefined,
    storageBucket: process.env.FIREBASE_STORAGE_BUCKET,
  },

  whatsapp: {
    provider: process.env.WHATSAPP_PROVIDER || 'webjs',
    ownerNumber: process.env.OWNER_WHATSAPP_NUMBER,
    gapMs: parseInt(process.env.WHATSAPP_GAP_MS || '4000', 10),
  },

  twilio: {
    accountSid: process.env.TWILIO_ACCOUNT_SID,
    authToken: process.env.TWILIO_AUTH_TOKEN,
    from: process.env.TWILIO_FROM_NUMBER,
    channel: process.env.TWILIO_CHANNEL || 'sms', // 'sms' or 'whatsapp'
  },

  aiServiceUrl: process.env.AI_SERVICE_URL || 'http://localhost:8000',

  isProd: (process.env.NODE_ENV || 'development') === 'production',
};

module.exports = env;