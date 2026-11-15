const staffService = require('./staff.service');
const attendanceService = require('./attendance.service');
const faceVerificationService = require('./faceVerification.service');
const payrollService = require('./payroll.service');

function httpError(message, statusCode) {
  const err = new Error(message);
  err.statusCode = statusCode;
  return err;
}

// Only the owner may act on another branch. Everyone else is locked to their own branch.
function resolveBranchId(req, requested) {
  if (req.user.role === 'owner') {
    return requested || req.user.branchId;
  }
  return req.user.branchId;
}

// Makes sure a manager only touches staff of their own branch
async function assertTargetAllowed(req, targetUserId) {
  const target = await staffService.getUserBranch(targetUserId);
  if (req.user.role !== 'owner' && String(target.branch_id) !== String(req.user.branchId)) {
    throw httpError('You can only manage staff in your own branch', 403);
  }
  return target;
}

function pakistanToday() {
  return new Date().toLocaleDateString('en-CA', { timeZone: 'Asia/Karachi' });
}

// ---------- Staff records ----------

async function createStaffProfile(req, res) {
  const branchId = resolveBranchId(req, req.body.branchId);
  const profile = await staffService.createStaffProfile({ ...req.body, branchId });
  return res.status(201).json({ success: true, data: profile });
}

async function getStaffList(req, res) {
  const branchId = resolveBranchId(req, req.query.branchId);
  const staff = await staffService.getStaffForBranch(branchId);
  return res.status(200).json({ success: true, data: staff });
}

async function updateSalary(req, res) {
  await assertTargetAllowed(req, req.params.userId);
  const updated = await staffService.updateSalary(req.params.userId, req.body.salaryRate, req.body.salaryType);
  return res.status(200).json({ success: true, data: updated });
}

async function updateShifts(req, res) {
  await assertTargetAllowed(req, req.params.userId);
  const updated = await staffService.updateShiftSchedule(req.params.userId, req.body.shiftSchedule);
  return res.status(200).json({ success: true, data: updated });
}

async function setStaffActive(req, res) {
  if (String(req.params.userId) === String(req.user.sub)) {
    throw httpError('You cannot change your own active status', 400);
  }
  await assertTargetAllowed(req, req.params.userId);
  const updated = await staffService.setStaffActive(req.params.userId, req.body.isActive);
  return res.status(200).json({ success: true, data: updated });
}

// ---------- Face registration ----------

async function registerFace(req, res) {
  if (!req.body.imageBase64) {
    throw httpError('imageBase64 is required', 400);
  }

  let userId = req.user.sub;
  const requested = req.body.userId;
  if (requested && String(requested) !== String(req.user.sub)) {
    // Registering someone else's face is for owner/manager only
    if (!['owner', 'manager'].includes(req.user.role)) {
      throw httpError('You can only register your own face', 403);
    }
    await assertTargetAllowed(req, requested);
    userId = requested;
  }

  const profile = await faceVerificationService.registerFace(userId, req.body.imageBase64);
  // Never send the raw face data back
  return res.status(200).json({
    success: true,
    data: { user_id: profile.user_id, face_registered: true },
  });
}

// ---------- Attendance ----------

async function checkIn(req, res) {
  const result = await attendanceService.checkInStaff({
    staffId: req.user.sub,
    branchId: req.user.branchId,
    method: req.body.method,
    pin: req.body.pin,
    imageBase64: req.body.imageBase64,
    shift: req.body.shift,
  });
  return res.status(201).json({ success: true, data: result });
}

async function checkOut(req, res) {
  const result = await attendanceService.checkOutStaff(req.user.sub);
  return res.status(200).json({ success: true, data: result });
}

async function getMyAttendanceStatus(req, res) {
  const status = await attendanceService.getMyStatus(req.user.sub);
  return res.status(200).json({ success: true, data: status });
}

async function forceCheckOut(req, res) {
  const branchId = req.user.role === 'owner' ? null : req.user.branchId;
  const result = await attendanceService.forceCheckOut(req.params.logId, branchId);
  return res.status(200).json({ success: true, data: result });
}

async function getLiveAttendance(req, res) {
  const branchId = resolveBranchId(req, req.query.branchId);
  const status = await attendanceService.getLiveAttendanceStatus(branchId);
  return res.status(200).json({ success: true, data: status });
}

async function getAttendanceByDate(req, res) {
  const branchId = resolveBranchId(req, req.query.branchId);
  const date = req.query.date || pakistanToday();
  const logs = await attendanceService.getAttendanceForDate(branchId, date);
  return res.status(200).json({ success: true, data: logs });
}

async function getFailedAttempts(req, res) {
  const branchId = resolveBranchId(req, req.query.branchId);
  const attempts = await attendanceService.getFailedAttempts(branchId, req.query.limit);
  return res.status(200).json({ success: true, data: attempts });
}

// ---------- Salary slips ----------

async function generatePayroll(req, res) {
  const { fromDate, toDate, userId } = req.body;
  if (!fromDate || !toDate) {
    throw httpError('fromDate and toDate are required (YYYY-MM-DD)', 400);
  }
  const branchId = resolveBranchId(req, req.body.branchId);
  if (userId) {
    await assertTargetAllowed(req, userId);
  }
  const slips = await payrollService.generateAndSaveBranchPayroll(branchId, fromDate, toDate, req.user.sub, userId);
  return res.status(201).json({ success: true, data: slips });
}

async function listPayrollSlips(req, res) {
  const branchId = resolveBranchId(req, req.query.branchId);
  const slips = await payrollService.listSlips(branchId, req.query.fromDate, req.query.toDate);
  return res.status(200).json({ success: true, data: slips });
}

async function getMySlips(req, res) {
  const slips = await payrollService.getMySlips(req.user.sub);
  return res.status(200).json({ success: true, data: slips });
}

module.exports = {
  createStaffProfile,
  getStaffList,
  updateSalary,
  updateShifts,
  setStaffActive,
  registerFace,
  checkIn,
  checkOut,
  getMyAttendanceStatus,
  forceCheckOut,
  getLiveAttendance,
  getAttendanceByDate,
  getFailedAttempts,
  generatePayroll,
  listPayrollSlips,
  getMySlips,
};