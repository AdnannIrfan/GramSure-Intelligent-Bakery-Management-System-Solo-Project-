const ROLES = Object.freeze({
  OWNER: 'owner',
  MANAGER: 'manager',
  STAFF: 'staff',
  AUDITOR: 'auditor',
});

const PAYMENT_TYPES = Object.freeze({
  CASH: 'cash',
  CREDIT: 'credit',
  DIGITAL: 'digital',
});

const EXPENSE_STATUS = Object.freeze({
  PENDING: 'pending',
  APPROVED: 'approved',
  REJECTED: 'rejected',
});

const PURCHASE_ORDER_STATUS = Object.freeze({
  PENDING: 'pending',
  RECEIVED: 'received',
  DISCREPANCY: 'discrepancy',
});

const FRAUD_ALERT_STATUS = Object.freeze({
  OPEN: 'open',
  REVIEWED: 'reviewed',
  DISMISSED: 'dismissed',
});

const STOCK_TRANSFER_STATUS = Object.freeze({
  PENDING: 'pending',
  IN_TRANSIT: 'in_transit',
  COMPLETED: 'completed',
  CANCELLED: 'cancelled',
});

const NOTIFICATION_TYPES = Object.freeze({
  FRAUD: 'fraud',
  EXPENSE: 'expense',
  STOCK: 'stock',
  SUMMARY: 'summary',
  FORECAST: 'forecast',
  OTHER: 'other',
});


const PRODUCTION_VARIANCE_TOLERANCE_PERCENT = 2.0;


const PROCUREMENT_DISCREPANCY_THRESHOLD_PERCENT = 2.0;


const WHATSAPP_ALERT_TARGET_MS = 60000;

module.exports = {
  ROLES,
  PAYMENT_TYPES,
  EXPENSE_STATUS,
  PURCHASE_ORDER_STATUS,
  FRAUD_ALERT_STATUS,
  STOCK_TRANSFER_STATUS,
  NOTIFICATION_TYPES,
  PRODUCTION_VARIANCE_TOLERANCE_PERCENT,
  PROCUREMENT_DISCREPANCY_THRESHOLD_PERCENT,
  WHATSAPP_ALERT_TARGET_MS,
};