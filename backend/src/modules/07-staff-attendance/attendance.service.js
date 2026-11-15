const attendanceModel = require('./attendance.model');
const staffService = require('./staff.service');
const faceVerificationService = require('./faceVerification.service');
const { uploadSelfie, getSelfieUrls } = require('../../config/supabase');
const { sendWhatsAppMessage } = require('../../config/twilio');
const logger = require('../../utils/logger');

const MAX_FAILED_BEFORE_ALERT = 3; // failures within one hour
const UUID_REGEX = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
const DATE_REGEX = /^\d{4}-\d{2}-\d{2}$/;

function httpError(message, statusCode) {
  const err = new Error(message);
  err.statusCode = statusCode;
  return err;
}

function pakistanToday() {
  return new Date().toLocaleDateString('en-CA', { timeZone: 'Asia/Karachi' });
}

// A failed upload must never block a check-in
async function saveSelfie({ imageBase64, branchId, staffId }) {
  try {
    const buffer = Buffer.from(String(imageBase64).split(',').pop(), 'base64');
    const destPath = `${branchId}/${staffId}/${Date.now()}.jpg`;
    return await uploadSelfie(buffer, destPath, 'image/jpeg');
  } catch (e) {
    logger.error(`Selfie upload failed: ${e.message}`);
    return null;
  }
}

async function notifyOwner(message) {
  try {
    await sendWhatsAppMessage(message);
  } catch (e) {
    logger.error(`WhatsApp notification failed: ${e.message}`);
  }
}

async function recordFailedAttempt({ staffId, branchId, method, eventType, faceMatchScore, details, selfiePath }) {
  try {
    await attendanceModel.logAttempt({ staffId, branchId, method, eventType, faceMatchScore, details, selfiePath });

    if (eventType === 'face_mismatch' || eventType === 'wrong_pin') {
      const count = await attendanceModel.countRecentAttempts(staffId, eventType, 60);
      if (count === MAX_FAILED_BEFORE_ALERT) {
        const name = await attendanceModel.findStaffName(staffId);
        const what = eventType === 'face_mismatch' ? 'face' : 'PIN';
        await notifyOwner(
          `⚠️ ${MAX_FAILED_BEFORE_ALERT} failed ${what} check-ins in the last hour for ${name || 'a staff member'}. Possible buddy punching - please review attendance attempts.`
        );
      }
    }
  } catch (e) {
    logger.error(`Could not record failed attempt: ${e.message}`);
  }
}

async function withSelfieUrls(rows) {
  const urls = await getSelfieUrls(rows.map((r) => r.selfie_path));
  return rows.map((r) => ({
    ...r,
    selfie_url: r.selfie_path ? urls[r.selfie_path] || null : null,
  }));
}

async function checkInStaff({ staffId, branchId, method, pin, imageBase64, shift }) {
  const existingOpen = await attendanceModel.findOpenAttendanceForStaff(staffId);
  if (existingOpen) {
    throw httpError('Staff member already checked in — please check out first', 409);
  }

  let faceMatchScore = null;
  let selfiePath = null;

  if (method === 'selfie') {
    if (!imageBase64) {
      throw httpError('imageBase64 is required for selfie check-in', 400);
    }

    let result;
    try {
      result = await faceVerificationService.verifyFace(staffId, imageBase64);
    } catch (err) {
      if (err.code === 'NO_FACE') {
        const evidence = await saveSelfie({ imageBase64, branchId, staffId });
        await recordFailedAttempt({
          staffId,
          branchId,
          method: 'selfie',
          eventType: 'no_face_detected',
          details: 'No face could be detected in the selfie',
          selfiePath: evidence,
        });
      }
      throw err;
    }

    faceMatchScore = result.score;
    selfiePath = await saveSelfie({ imageBase64, branchId, staffId });

    if (!result.isMatch) {
      await recordFailedAttempt({
        staffId,
        branchId,
        method: 'selfie',
        eventType: 'face_mismatch',
        faceMatchScore: result.score,
        details: `Score ${result.score.toFixed(2)} is below the required ${faceVerificationService.MATCH_THRESHOLD}`,
        selfiePath,
      });
      throw httpError(`Face verification failed (score: ${result.score.toFixed(2)}). Check-in denied.`, 403);
    }
  } else if (method === 'pin') {
    if (!pin) {
      throw httpError('pin is required for PIN-based check-in', 400);
    }
    const isValid = await staffService.verifyPin(staffId, pin);
    if (!isValid) {
      await recordFailedAttempt({
        staffId,
        branchId,
        method: 'pin',
        eventType: 'wrong_pin',
        details: 'Incorrect PIN entered at check-in',
      });
      // 403, not 401: the app treats 401 as "login expired" and would log the person out
      throw httpError('Incorrect PIN. Please try again.', 403);
    }
  } else {
    throw httpError('method must be either "pin" or "selfie"', 400);
  }

  return attendanceModel.checkIn({
    staffId,
    branchId,
    checkInMethod: method,
    faceMatchScore,
    shift,
    selfiePath,
  });
}

async function checkOutStaff(staffId) {
  const openLog = await attendanceModel.findOpenAttendanceForStaff(staffId);
  if (!openLog) {
    throw httpError('No active check-in found for this staff member', 404);
  }
  return attendanceModel.checkOut(openLog.id);
}

// For staff who forgot to check out. branchId null = owner (any branch).
async function forceCheckOut(logId, branchId) {
  if (!UUID_REGEX.test(String(logId))) {
    throw httpError('Attendance record not found', 404);
  }
  const updated = await attendanceModel.checkOutById(logId, branchId);
  if (!updated) {
    throw httpError('No open check-in found for that record', 404);
  }
  return updated;
}

async function getMyStatus(staffId) {
  const open = await attendanceModel.findOpenAttendanceForStaff(staffId);
  return { checkedIn: !!open, attendance: open };
}

async function getLiveAttendanceStatus(branchId) {
  const rows = await attendanceModel.getLiveAttendanceStatus(branchId);
  return withSelfieUrls(rows);
}

async function getAttendanceForDate(branchId, date) {
  const day = typeof date === 'string' && DATE_REGEX.test(date) ? date : pakistanToday();
  const rows = await attendanceModel.findAllByBranchAndDate(branchId, day);
  return withSelfieUrls(rows);
}

async function getAttendanceHistory(staffId, fromDate, toDate) {
  return attendanceModel.findByStaffAndDateRange(staffId, fromDate, toDate);
}

async function getFailedAttempts(branchId, limit = 50) {
  const safeLimit = Math.min(Math.max(parseInt(limit, 10) || 50, 1), 200);
  const rows = await attendanceModel.listAttemptsByBranch(branchId, safeLimit);
  return withSelfieUrls(rows);
}

module.exports = {
  checkInStaff,
  checkOutStaff,
  forceCheckOut,
  getMyStatus,
  getLiveAttendanceStatus,
  getAttendanceForDate,
  getAttendanceHistory,
  getFailedAttempts,
};