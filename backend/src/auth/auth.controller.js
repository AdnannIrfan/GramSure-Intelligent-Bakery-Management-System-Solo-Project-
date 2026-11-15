const authService = require('./auth.service');

async function register(req, res) {
  const { name, phone, password, role, branchId } = req.body;

  if (!name || !phone || !password || !role) {
    return res.status(400).json({ success: false, message: 'name, phone, password, and role are required' });
  }

  const user = await authService.registerUser({ name, phone, password, role, branchId });
  return res.status(201).json({ success: true, data: user });
}

async function login(req, res) {
  const { phone, password } = req.body;

  if (!phone || !password) {
    return res.status(400).json({ success: false, message: 'phone and password are required' });
  }

  const result = await authService.loginUser({ phone, password });
  return res.status(200).json({ success: true, data: result });
}

async function refresh(req, res) {
  const { refreshToken } = req.body;

  if (!refreshToken) {
    return res.status(400).json({ success: false, message: 'refreshToken is required' });
  }

  const result = await authService.refreshAccessToken(refreshToken);
  return res.status(200).json({ success: true, data: result });
}

async function me(req, res) {
  // req.user is populated by auth.middleware.js
  return res.status(200).json({ success: true, data: req.user });
}

module.exports = { register, login, refresh, me };