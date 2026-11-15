const admin = require('firebase-admin');
const env = require('./env');
const logger = require('../utils/logger');

let bucket = null;

function initFirebase() {
  if (admin.apps.length) return admin.app();

  if (!env.firebase.projectId || !env.firebase.clientEmail || !env.firebase.privateKey) {
    logger.warn('Firebase credentials not fully set — file uploads will fail until configured.');
    return null;
  }

  admin.initializeApp({
    credential: admin.credential.cert({
      projectId: env.firebase.projectId,
      clientEmail: env.firebase.clientEmail,
      privateKey: env.firebase.privateKey,
    }),
    storageBucket: env.firebase.storageBucket,
  });

  bucket = admin.storage().bucket();
  logger.info('Firebase initialized successfully');
  return admin.app();
}

async function uploadBuffer(buffer, destPath, mimeType) {
  if (!bucket) initFirebase();
  if (!bucket) throw new Error('Firebase Storage is not configured');

  const file = bucket.file(destPath);
  await file.save(buffer, { metadata: { contentType: mimeType } });
  await file.makePublic();
  return `https://storage.googleapis.com/${bucket.name}/${destPath}`;
}

module.exports = { initFirebase, uploadBuffer };