const saleModel = require('./sale.model');
const { sendWhatsAppMessage } = require('../../config/twilio');

const DISCREPANCY_THRESHOLD = 100; // PKR - flag any unaccounted shortfall above this amount

async function recordSale(data) {
  if (!data.productName || !data.unitsSold || !data.amount || !data.paymentType) {
    const err = new Error('productName, unitsSold, amount, and paymentType are required');
    err.statusCode = 400;
    throw err;
  }
  return saleModel.recordSale(data);
}

async function getSales(branchId, filters) {
  return saleModel.findAllByBranch(branchId, filters);
}


async function reconcileShift({ branchId, staffId, shift, unitsProduced, closingStock, cashCollected, avgUnitPrice }) {
  const expectedUnitsSold = unitsProduced - closingStock;
  const expectedRevenue = expectedUnitsSold * avgUnitPrice;
  const discrepancyAmount = expectedRevenue - cashCollected;

  const reconciliation = await saleModel.createShiftReconciliation({
    branchId,
    staffId,
    shift,
    unitsProduced,
    closingStock,
    expectedUnitsSold,
    cashCollected,
    discrepancyAmount,
  });

  if (Math.abs(discrepancyAmount) > DISCREPANCY_THRESHOLD) {
    await sendWhatsAppMessage(
      `💰 Cash discrepancy — Shift ${shift}, Staff ${staffId}\n` +
      `Expected revenue: Rs. ${expectedRevenue.toFixed(0)}\n` +
      `Cash collected: Rs. ${cashCollected.toFixed(0)}\n` +
      `Unaccounted: Rs. ${discrepancyAmount.toFixed(0)}`
    );
  }

  return reconciliation;
}

async function getCashierPerformance(staffId, limit) {
  return saleModel.getCashierPerformanceHistory(staffId, limit);
}

async function getTotalRevenueForDate(branchId, date) {
  return saleModel.getTotalRevenueForDate(branchId, date || new Date());
}

module.exports = { recordSale, getSales, reconcileShift, getCashierPerformance, getTotalRevenueForDate };