const stockModel = require('./stock.model');
const { sendWhatsAppMessage } = require('../../config/twilio');


async function increaseStock({ materialName, branchId, quantity, unit, unitCost }) {
  let stockItem = await stockModel.findByMaterialAndBranch(materialName, branchId);

  if (!stockItem) {
    stockItem = await stockModel.createStockItem({
      materialName,
      branchId,
      quantity: 0,
      unit: unit || 'kg',
      lowStockThreshold: 0,
    });
  }

  const updated = await stockModel.adjustQuantity(stockItem.id, quantity);
  await stockModel.recordMovement({
    stockItemId: stockItem.id,
    movementType: 'in',
    quantity,
    unitCost,
    referenceType: 'procurement',
  });

  return updated;
}


async function decreaseStock({ materialName, branchId, quantity, referenceType, referenceId }) {
  const stockItem = await stockModel.findByMaterialAndBranch(materialName, branchId);
  if (!stockItem) {
    const err = new Error(`Stock item "${materialName}" not found for this branch`);
    err.statusCode = 404;
    throw err;
  }
  if (stockItem.quantity < quantity) {
    const err = new Error(`Insufficient stock for "${materialName}": have ${stockItem.quantity}, need ${quantity}`);
    err.statusCode = 400;
    throw err;
  }

  const unitCost = await stockModel.getFifoUnitCost(stockItem.id);
  const updated = await stockModel.adjustQuantity(stockItem.id, -quantity);

  await stockModel.recordMovement({
    stockItemId: stockItem.id,
    movementType: 'out',
    quantity,
    unitCost,
    referenceType,
    referenceId,
  });

  await checkLowStockAndAlert(branchId, updated);

  return updated;
}

async function checkLowStockAndAlert(branchId, stockItem) {
  if (stockItem.quantity <= stockItem.low_stock_threshold) {
    await sendWhatsAppMessage(
      `📦 Low stock alert: ${stockItem.material_name} is at ${stockItem.quantity}${stockItem.unit} (threshold: ${stockItem.low_stock_threshold}${stockItem.unit})`
    );
  }
}

async function getStockLevels(branchId) {
  return stockModel.findAllByBranch(branchId);
}

async function getLowStockItems(branchId) {
  return stockModel.findLowStockItems(branchId);
}

module.exports = { increaseStock, decreaseStock, getStockLevels, getLowStockItems };