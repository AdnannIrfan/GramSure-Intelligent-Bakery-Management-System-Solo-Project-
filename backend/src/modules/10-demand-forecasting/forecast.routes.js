const express = require('express');
const forecastController = require('./forecast.controller');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');

const router = express.Router();

router.use(authenticate);
router.use(authorize('owner', 'manager'));


router.post('/generate', forecastController.generateForecast);


router.get('/:date', forecastController.getForecastForDate);

module.exports = router;