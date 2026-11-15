const staffService = require('./staff.service');
const payrollModel = require('./payroll.model');

const DATE_REGEX = /^\d{4}-\d{2}-\d{2}$/;

function httpError(message, statusCode) {
  const err = new Error(message);
  err.statusCode = statusCode;
  return err;
}

const round2 = (n) => Math.round((n + Number.EPSILON) * 100) / 100;

// Accepts YYYY-MM-DD, a Date, or an ISO timestamp; returns YYYY-MM-DD in Pakistan time
function normalizeDate(value) {
  if (typeof value === 'string' && DATE_REGEX.test(value)) return value;
  const d = value instanceof Date ? value : new Date(value);
  if (Number.isNaN(d.getTime())) {
    throw httpError('fromDate and toDate must be valid dates (YYYY-MM-DD)', 400);
  }
  return d.toLocaleDateString('en-CA', { timeZone: 'Asia/Karachi' });
}

function dayNumber(dateStr) {
  return Math.floor(Date.parse(`${dateStr}T00:00:00Z`) / 86400000);
}

function daysInMonthOf(dateStr) {
  const [y, m] = dateStr.split('-').map(Number);
  return new Date(Date.UTC(y, m, 0)).getUTCDate();
}

/**
 * Daily staff:   days worked x daily rate.
 * Monthly staff: the monthly rate (prorated if the period is shorter or longer than the month),
 *                minus one day's pay for each absent day. One weekly day off per 7 days is not
 *                counted as an absence.
 * Same keys as before (userId, fromDate, toDate, salaryType, salaryRate, daysWorked,
 * totalHoursWorked, totalPay) plus extras.
 */
async function calculateSalarySlip(userId, fromDate, toDate) {
  const from = normalizeDate(fromDate);
  const to = normalizeDate(toDate);
  const daysInPeriod = dayNumber(to) - dayNumber(from) + 1;
  if (daysInPeriod < 1) {
    throw httpError('toDate must not be before fromDate', 400);
  }

  const profile = await staffService.getStaffProfile(userId);
  const summary = await payrollModel.getAttendanceSummary(userId, from, to);

  const daysWorked = Number(summary.days_worked) || 0;
  const totalHours = Number(summary.total_hours) || 0;
  const openShifts = Number(summary.open_shifts) || 0;
  const rate = parseFloat(profile.salary_rate);

  let grossPay;
  let deductions = 0;
  let absentDays = 0;

  if (profile.salary_type === 'daily') {
    grossPay = daysWorked * rate;
  } else {
    const monthDays = daysInMonthOf(from);
    const perDay = rate / monthDays;
    grossPay = perDay * daysInPeriod;
    const weeklyOffs = Math.round(daysInPeriod / 7);
    absentDays = Math.max(0, daysInPeriod - weeklyOffs - daysWorked);
    deductions = Math.min(grossPay, absentDays * perDay);
  }

  const netPay = Math.max(0, grossPay - deductions);

  return {
    userId,
    branchId: profile.branch_id,
    fromDate: from,
    toDate: to,
    salaryType: profile.salary_type,
    salaryRate: rate,
    daysInPeriod,
    daysWorked,
    absentDays,
    totalHoursWorked: round2(totalHours),
    grossPay: round2(grossPay),
    deductions: round2(deductions),
    netPay: round2(netPay),
    totalPay: round2(netPay),
    openShifts, // shifts with no check-out are not paid until they are closed
  };
}

async function generateBranchPayroll(branchId, fromDate, toDate) {
  const staffList = await staffService.getStaffForBranch(branchId);
  const slips = [];
  for (const staff of staffList) {
    const slip = await calculateSalarySlip(staff.user_id, fromDate, toDate);
    // Skip people who have left and did not work in this period
    if (staff.is_active === false && slip.daysWorked === 0) continue;
    slips.push({ ...slip, name: staff.name, position: staff.position });
  }
  return slips;
}

// Calculates AND saves the slips (re-running the same period updates them)
async function generateAndSaveBranchPayroll(branchId, fromDate, toDate, generatedBy, onlyUserId) {
  const slips = await generateBranchPayroll(branchId, fromDate, toDate);
  const chosen = onlyUserId ? slips.filter((s) => String(s.userId) === String(onlyUserId)) : slips;

  const saved = [];
  for (const slip of chosen) {
    const row = await payrollModel.upsertSlip({
      userId: slip.userId,
      branchId: slip.branchId,
      fromDate: slip.fromDate,
      toDate: slip.toDate,
      salaryType: slip.salaryType,
      salaryRate: slip.salaryRate,
      daysWorked: slip.daysWorked,
      totalHours: slip.totalHoursWorked,
      grossPay: slip.grossPay,
      deductions: slip.deductions,
      netPay: slip.netPay,
      generatedBy,
    });
    saved.push({
      ...row,
      name: slip.name,
      position: slip.position,
      absent_days: slip.absentDays,
      open_shifts: slip.openShifts,
    });
  }
  return saved;
}

async function listSlips(branchId, fromDate, toDate) {
  const from = fromDate ? normalizeDate(fromDate) : null;
  const to = toDate ? normalizeDate(toDate) : null;
  return payrollModel.findSlipsByBranch(branchId, from, to);
}

async function getMySlips(userId) {
  return payrollModel.findSlipsByUser(userId, 24);
}

module.exports = {
  calculateSalarySlip,
  generateBranchPayroll,
  generateAndSaveBranchPayroll,
  listSlips,
  getMySlips,
};