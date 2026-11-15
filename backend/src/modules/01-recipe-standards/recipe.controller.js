const recipeService = require('./recipe.service');

async function createRecipe(req, res) {
  const branchId = req.body.branchId || req.user.branchId;
  const recipe = await recipeService.createRecipe({ ...req.body, branchId });
  return res.status(201).json({ success: true, data: recipe });
}

async function getRecipes(req, res) {
  const branchId = req.query.branchId || req.user.branchId;
  const recipes = await recipeService.getRecipesForBranch(branchId);
  return res.status(200).json({ success: true, data: recipes });
}

async function getRecipe(req, res) {
  const recipe = await recipeService.getRecipeById(req.params.id);
  return res.status(200).json({ success: true, data: recipe });
}

async function updateRecipe(req, res) {
  const recipe = await recipeService.updateRecipe(req.params.id, req.body);
  return res.status(200).json({ success: true, data: recipe });
}

async function deleteRecipe(req, res) {
  await recipeService.deleteRecipe(req.params.id);
  return res.status(204).send();
}

module.exports = { createRecipe, getRecipes, getRecipe, updateRecipe, deleteRecipe };