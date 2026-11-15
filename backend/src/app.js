require('express-async-errors'); 

const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const morgan = require('morgan');

const env = require('./config/env');
const routes = require('./routes/index');
const { errorHandler, notFoundHandler } = require('./middleware/errorHandler.middleware');
const logger = require('./utils/logger');

const app = express();


app.use(helmet());
app.use(cors({ origin: env.clientUrl, credentials: true }));
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true }));
app.use(
  morgan('combined', {
    stream: { write: (message) => logger.info(message.trim()) },
  })
);


app.use('/api', routes);


app.get('/', (req, res) => {
  res.status(200).json({ message: 'GramSure Intelligent Bakery Management System API', status: 'running' });
});


app.use(notFoundHandler);
app.use(errorHandler);

module.exports = app;