const axios = require('axios');
const env = require('../../config/env');
const { query } = require('../../config/db');
const suspicionIndexService = require('./suspicionIndex.service');
const { sendWhatsAppMessage } = require('../../config/twilio');
const logger = require('../../utils/logger');


async function runAnomalyDetection(branchId) {
  try {
    const response = await axios.post(`${env.aiServiceUrl}/api/fraud/analyze`, { branch_id: branchId });
    const { anomalies } = response.data;
    logger.info(`AI fraud analysis returned ${anomalies ? anomalies.length : 0} anomalies for branch ${branchId}`);

    const createdAlerts = [];
    for (const anomaly of anomalies) {
      const alert = await createFraudAlert({
        branchId,
        staffId: anomaly.staff_id,
        alertType: anomaly.type, 
        referenceType: anomaly.reference_type,
        referenceId: anomaly.reference_id,
        riskScore: anomaly.risk_score,
        details: anomaly.details,
      });
      createdAlerts.push(alert);

      if (anomaly.staff_id) {
        await suspicionIndexService.updateFromAIScore(anomaly.staff_id, anomaly.risk_score);
      }
    }
    return createdAlerts;
  } catch (err) {
    logger.error(`Anomaly detection request failed: ${err.message}`);
    const e = new Error('AI fraud analysis service is currently unavailable');
    e.statusCode = 503;
    throw e;
  }
}

async function createFraudAlert({ branchId, staffId, alertType, referenceType, referenceId, riskScore, details }) {
  const result = await query(
    `INSERT INTO fraud_alerts
      (branch_id, staff_id, alert_type, reference_type, reference_id, risk_score, details, status, created_at)
     VALUES ($1, $2, $3, $4, $5, $6, $7, 'open', NOW())
     RETURNING *`,
    [branchId, staffId || null, alertType, referenceType || null, referenceId || null, riskScore, details || null]
  );

  const alert = result.rows[0];

  if (Number(riskScore) >= 70) {
    try {
      await sendWhatsAppMessage(
        `🚨 High-risk fraud alert (score: ${riskScore})\nType: ${alertType}\n${details || ''}`
      );
      logger.info(`Fraud WhatsApp alert sent for alert ${alert.id}`);
    } catch (err) {
      logger.error(`Fraud WhatsApp alert failed for alert ${alert.id}: ${err.message}`);
    }
  } else {
    logger.info(`Fraud alert ${alert.id} saved, score ${riskScore} is below 70 so no WhatsApp sent`);
  }

  return alert;
}

async function getAlerts(branchId, status) {
  const params = [branchId];
  let sql = `SELECT * FROM fraud_alerts WHERE branch_id = $1`;
  if (status) {
    params.push(status);
    sql += ` AND status = $2`;
  }
  sql += ` ORDER BY created_at DESC`;
  const result = await query(sql, params);
  return result.rows;
}

async function updateAlertStatus(id, status) {
  const result = await query(
    `UPDATE fraud_alerts SET status = $2 WHERE id = $1 RETURNING *`,
    [id, status]
  );
  return result.rows[0];
}

async function getSuspicionLeaderboard(branchId, limit) {
  return suspicionIndexService.getTopSuspicious(branchId, limit);
}

module.exports = { runAnomalyDetection, createFraudAlert, getAlerts, updateAlertStatus, getSuspicionLeaderboard };