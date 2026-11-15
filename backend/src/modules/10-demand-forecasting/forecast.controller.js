const forecastService = require('./forecast.service');

async function generateForecast(req, res) {
  const branchId = req.body.branchId || req.user.branchId;
  const forecasts = await forecastService.generateForecast(branchId);
  return res.status(201).json({ success: true, data: forecasts });
}

async function getForecastForDate(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const date = req.params.date;
  const forecasts = await forecastService.getForecastForDate(branchId, date);
  return res.status(200).json({ success: true, data: forecasts });
}

module.exports = { generateForecast, getForecastForDate };

