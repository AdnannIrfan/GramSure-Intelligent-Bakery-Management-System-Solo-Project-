const express = require('express');
const staffController = require('./staff.controller');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');

const router = express.Router();

router.use(authenticate);

// Staff records
router.get('/', authorize('owner', 'manager'), staffController.getStaffList);
router.post('/', authorize('owner', 'manager'), staffController.createStaffProfile);

// Face registration (own face for staff, anyone's for owner/manager)
router.post('/face/register', staffController.registerFace);

// Attendance
router.post('/attendance/check-in', staffController.checkIn);
router.post('/attendance/check-out', staffController.checkOut);
router.get('/attendance/my-status', staffController.getMyAttendanceStatus);
router.get('/attendance/live', authorize('owner', 'manager'), staffController.getLiveAttendance);
router.get('/attendance/by-date', authorize('owner', 'manager'), staffController.getAttendanceByDate);
router.get('/attendance/attempts', authorize('owner', 'manager'), staffController.getFailedAttempts);
router.post('/attendance/:logId/force-check-out', authorize('owner', 'manager'), staffController.forceCheckOut);

// Salary slips
router.post('/payroll/generate', authorize('owner', 'manager'), staffController.generatePayroll);
router.get('/payroll/slips', authorize('owner', 'manager'), staffController.listPayrollSlips);
router.get('/payroll/my-slips', staffController.getMySlips);

// Edit one staff member (these must stay at the bottom)
router.patch('/:userId/salary', authorize('owner'), staffController.updateSalary);
router.patch('/:userId/shifts', authorize('owner', 'manager'), staffController.updateShifts);
router.patch('/:userId/active', authorize('owner', 'manager'), staffController.setStaffActive);

module.exports = router;