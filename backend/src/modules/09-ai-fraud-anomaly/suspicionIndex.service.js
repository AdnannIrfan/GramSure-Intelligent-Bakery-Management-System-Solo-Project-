const { query } = require('../../config/db');


async function getOrCreate(staffId) {
  let result = await query(`SELECT * FROM staff_suspicion_index WHERE staff_id = $1`, [staffId]);
  if (result.rows.length === 0) {
    result = await query(
      `INSERT INTO staff_suspicion_index (staff_id, score, batch_count, flagged_count, last_updated)
       VALUES ($1, 0, 0, 0, NOW())
       RETURNING *`,
      [staffId]
    );
  }
  return result.rows[0];
}


async function recordBatchOutcome(staffId, variancePercent, fraudFlag) {
  const current = await getOrCreate(staffId);

  let scoreDelta;
  if (fraudFlag) {
    scoreDelta = 8 + Math.min(Math.abs(variancePercent), 20); // bigger variance -> bigger jump
  } else {
    scoreDelta = -1; 
  }

  const newScore = Math.max(0, Math.min(100, parseFloat(current.score) + scoreDelta));

  const result = await query(
    `UPDATE staff_suspicion_index
     SET score = $2,
         batch_count = batch_count + 1,
         flagged_count = flagged_count + $3,
         last_updated = NOW()
     WHERE staff_id = $1
     RETURNING *`,
    [staffId, newScore, fraudFlag ? 1 : 0]
  );
  return result.rows[0];
}


async function updateFromAIScore(staffId, aiRiskScore) {
  const current = await getOrCreate(staffId);
  
  const blendedScore = Math.max(0, Math.min(100, parseFloat(current.score) * 0.6 + aiRiskScore * 0.4));

  const result = await query(
    `UPDATE staff_suspicion_index SET score = $2, last_updated = NOW() WHERE staff_id = $1 RETURNING *`,
    [staffId, blendedScore]
  );
  return result.rows[0];
}

async function getTopSuspicious(branchId, limit = 10) {
  const result = await query(
    `SELECT ssi.*, u.name
     FROM staff_suspicion_index ssi
     JOIN users u ON u.id = ssi.staff_id
     WHERE u.branch_id = $1
     ORDER BY ssi.score DESC
     LIMIT $2`,
    [branchId, limit]
  );
  return result.rows;
}

module.exports = { getOrCreate, recordBatchOutcome, updateFromAIScore, getTopSuspicious };