const { z } = require('zod');



const phoneSchema = z.string().regex(/^\+?[0-9]{10,15}$/, 'Invalid phone number format');

const registerSchema = z.object({
  name: z.string().min(2),
  phone: phoneSchema,
  password: z.string().min(6),
  role: z.enum(['owner', 'manager', 'staff', 'auditor']),
  branchId: z.string().uuid().optional(),
});

const loginSchema = z.object({
  phone: phoneSchema,
  password: z.string().min(1),
});

const recipeSchema = z.object({
  productName: z.string().min(1),
  flourQtyKg: z.number().positive(),
  expectedUnitsPerBatch: z.number().int().positive(),
  tolerancePercent: z.number().min(0).max(100).optional(),
  ingredients: z.array(z.object({ name: z.string(), quantity: z.number() })).optional(),
  costPerUnit: z.number().nonnegative().optional(),
});

const productionBatchSchema = z.object({
  productName: z.string().min(1),
  flourUsedKg: z.number().positive(),
  actualUnits: z.number().int().nonnegative(),
  shift: z.string().optional(),
});

const expenseSchema = z.object({
  category: z.string().min(1),
  amount: z.number().positive(),
});


function validateBody(schema) {
  return (req, res, next) => {
    const result = schema.safeParse(req.body);
    if (!result.success) {
      return res.status(400).json({
        success: false,
        message: 'Validation failed',
        errors: result.error.errors.map((e) => ({ path: e.path.join('.'), message: e.message })),
      });
    }
    req.body = result.data;
    next();
  };
}

module.exports = {
  phoneSchema,
  registerSchema,
  loginSchema,
  recipeSchema,
  productionBatchSchema,
  expenseSchema,
  validateBody,
};