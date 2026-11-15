const axios = require('axios');
const env = require('../../config/env');
const staffModel = require('./staff.model');
const logger = require('../../utils/logger');

const MATCH_THRESHOLD = 0.75;
const AI_TIMEOUT_MS = 20000;

// Turns an AI-service failure into a clear error for the app
function aiError(err) {
  if (err.response && err.response.status === 400) {
    const e = new Error('No face detected in the photo. Please retake it facing the camera in good light.');
    e.statusCode = 400;
    e.code = 'NO_FACE';
    return e;
  }
  logger.error(`Face verification service error: ${err.message}`);
  const e = new Error('Face verification service is currently unavailable');
  e.statusCode = 503;
  return e;
}

async function registerFace(userId, imageBase64) {
  let response;
  try {
    response = await axios.post(
      `${env.aiServiceUrl}/api/face/encode`,
      { image_base64: imageBase64 },
      { timeout: AI_TIMEOUT_MS }
    );
  } catch (err) {
    throw aiError(err);
  }

  const { encoding } = response.data;
  if (!encoding) {
    const err = new Error('Could not detect a face in the provided image');
    err.statusCode = 400;
    throw err;
  }

  return staffModel.updateFaceEncoding(userId, encoding);
}

async function verifyFace(userId, imageBase64) {
  const profile = await staffModel.findByUserId(userId);
  if (!profile || !profile.face_encoding) {
    const err = new Error('No registered face profile found for this staff member. Please register first.');
    err.statusCode = 400;
    throw err;
  }

  let response;
  try {
    response = await axios.post(
      `${env.aiServiceUrl}/api/face/verify`,
      { image_base64: imageBase64, stored_encoding: profile.face_encoding },
      { timeout: AI_TIMEOUT_MS }
    );
  } catch (err) {
    throw aiError(err);
  }

  const { score } = response.data;
  const isMatch = score >= MATCH_THRESHOLD;

  if (!isMatch) {
    logger.warn(`Face verification failed for staff ${userId} (score: ${score})`);
  }

  return { isMatch, score };
}

module.exports = { registerFace, verifyFace, MATCH_THRESHOLD };