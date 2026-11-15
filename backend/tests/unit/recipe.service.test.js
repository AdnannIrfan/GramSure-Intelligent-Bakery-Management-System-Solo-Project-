

const recipeService = require('../../src/modules/01-recipe-standards/recipe.service');

describe('recipeService.calculateExpectedYield', () => {
  it('calculates expected units proportionally to flour used', () => {
    const recipe = {
      flour_qty_kg: 5,
      expected_units_per_batch: 200, 
    };

    const result = recipeService.calculateExpectedYield(recipe, 5);
    expect(result).toBe(200);
  });

  it('scales down proportionally for smaller flour quantity', () => {
    const recipe = {
      flour_qty_kg: 5,
      expected_units_per_batch: 200,
    };

    const result = recipeService.calculateExpectedYield(recipe, 2.5);
    expect(result).toBe(100);
  });

  it('rounds to the nearest whole unit', () => {
    const recipe = {
      flour_qty_kg: 3,
      expected_units_per_batch: 100,
    };

    
    const result = recipeService.calculateExpectedYield(recipe, 1);
    expect(result).toBe(33);
  });
});

describe('recipeService.getStandardForProduct', () => {
  it('throws a 404 error when no active recipe exists', async () => {
    await expect(
      recipeService.getStandardForProduct('Nonexistent Product', 'fake-branch-id')
    ).rejects.toThrow();
  });
});