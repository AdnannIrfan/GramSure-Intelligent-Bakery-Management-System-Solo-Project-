const express = require('express');
const recipeController = require('./recipe.controller');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');

const router = express.Router();

router.use(authenticate);


router.get('/', recipeController.getRecipes);


router.get('/:id', recipeController.getRecipe);


router.post('/', authorize('owner', 'manager'), recipeController.createRecipe);


router.put('/:id', authorize('owner', 'manager'), recipeController.updateRecipe);


router.delete('/:id', authorize('owner'), recipeController.deleteRecipe);

module.exports = router;