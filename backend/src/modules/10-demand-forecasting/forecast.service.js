const axios = require('axios');
const env = require('../../config/env');
const { query } = require('../../config/db');
const { sendWhatsAppMessage } = require('../../config/twilio');
const logger = require('../../utils/logger');


async function generateForecast(branchId) {
  const salesHistory = await getSalesHistoryForForecasting(branchId);

  try {
    const response = await axios.post(`${env.aiServiceUrl}/api/forecast/predict`, {
      branch_id: branchId,
      sales_history: salesHistory,
    });

    const { forecasts } = response.data; 
    const saved = [];
    for (const f of forecasts) {
      const record = await saveForecast(branchId, f);
      saved.push(record);
    }
    return saved;
  } catch (err) {
    
    logger.error(`Forecast generation failed: ${err.response?.data?.detail || err.message}`);
    const e = new Error('Demand forecasting service is currently unavailable');
    e.statusCode = 503;
    throw e;
  }
}

async function saveForecast(branchId, { product_name, forecast_date, recommended_quantity, confidence }) {
  const result = await query(
    `INSERT INTO demand_forecasts
      (branch_id, product_name, forecast_date, recommended_quantity, confidence, created_at)
     VALUES ($1, $2, $3, $4, $5, NOW())
     RETURNING *`,
    [branchId, product_name, forecast_date, recommended_quantity, confidence]
  );
  return result.rows[0];
}

async function getSalesHistoryForForecasting(branchId, days = 90) {
  const result = await query(
    `SELECT product_name, created_at::date AS sale_date, SUM(units_sold) AS units
     FROM sales
     WHERE branch_id = $1 AND created_at >= NOW() - ($2 || ' days')::interval
     GROUP BY product_name, created_at::date
     ORDER BY sale_date ASC`,
    [branchId, days]
  );

  
  return result.rows.map((row) => ({
    product_name: row.product_name,
    sale_date:
      row.sale_date instanceof Date
        ? row.sale_date.toISOString().split('T')[0]
        : row.sale_date,
    units: parseFloat(row.units),
  }));
}

async function getForecastForDate(branchId, date) {
  const result = await query(
    `SELECT * FROM demand_forecasts WHERE branch_id = $1 AND forecast_date = $2 ORDER BY product_name ASC`,
    [branchId, date]
  );
  return result.rows;
}


async function sendTomorrowForecastToOwner(branchId) {
  const forecasts = await generateForecast(branchId);
  if (forecasts.length === 0) return;

  const lines = forecasts.map((f) => `${f.product_name}: ${f.recommended_quantity} units`).join('\n');
  await sendWhatsAppMessage(`🔮 Tomorrow's recommended production:\n${lines}`);

  return forecasts;
}

module.exports = { generateForecast, getForecastForDate, sendTomorrowForecastToOwner };