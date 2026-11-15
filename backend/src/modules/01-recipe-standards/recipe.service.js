const recipeModel = require('./recipe.model');

async function createRecipe(data) {
  if (!data.productName || !data.flourQtyKg || !data.expectedUnitsPerBatch) {
    const err = new Error('productName, flourQtyKg, and expectedUnitsPerBatch are required');
    err.statusCode = 400;
    throw err;
  }

  if (data.flourQtyKg <= 0 || data.expectedUnitsPerBatch <= 0) {
    const err = new Error('flourQtyKg and expectedUnitsPerBatch must be greater than 0');
    err.statusCode = 400;
    throw err;
  }

  // Prevent duplicate active recipes for the same product in the same branch
  const existing = await recipeModel.findActiveByProductName(data.productName, data.branchId);
  if (existing) {
    const err = new Error(`An active recipe for "${data.productName}" already exists. Please edit the existing recipe instead of creating a new one.`);
    err.statusCode = 409;
    throw err;
  }

  return recipeModel.create({
    ...data,
    tolerancePercent: data.tolerancePercent ?? 2.0,
    ingredients: data.ingredients || [],
  });
}

async function getRecipesForBranch(branchId) {
  return recipeModel.findAllByBranch(branchId);
}

async function getRecipeById(id) {
  const recipe = await recipeModel.findById(id);
  if (!recipe) {
    const err = new Error('Recipe not found');
    err.statusCode = 404;
    throw err;
  }
  return recipe;
}

async function getStandardForProduct(productName, branchId) {
  const recipe = await recipeModel.findActiveByProductName(productName, branchId);
  if (!recipe) {
    const err = new Error(`No active recipe standard found for "${productName}"`);
    err.statusCode = 404;
    throw err;
  }
  return recipe;
}

function calculateExpectedYield(recipe, flourUsedKg) {
  const unitsPerKg = recipe.expected_units_per_batch / recipe.flour_qty_kg;
  return Math.round(unitsPerKg * flourUsedKg);
}

async function updateRecipe(id, updates) {
  if (updates.flourQtyKg !== undefined && updates.flourQtyKg <= 0) {
    const err = new Error('flourQtyKg must be greater than 0');
    err.statusCode = 400;
    throw err;
  }
  if (updates.expectedUnitsPerBatch !== undefined && updates.expectedUnitsPerBatch <= 0) {
    const err = new Error('expectedUnitsPerBatch must be greater than 0');
    err.statusCode = 400;
    throw err;
  }

  const updated = await recipeModel.createNewVersion(id, updates);
  if (!updated) {
    const err = new Error('Recipe not found');
    err.statusCode = 404;
    throw err;
  }
  return updated;
}

async function deleteRecipe(id) {
  await recipeModel.remove(id);
}

module.exports = {
  createRecipe,
  getRecipesForBranch,
  getRecipeById,
  getStandardForProduct,
  calculateExpectedYield,
  updateRecipe,
  deleteRecipe,
};