const express = require('express');
const branchController = require('./branch.controller');
const { authenticate } = require('../../middleware/auth.middleware');
const { authorize } = require('../../middleware/role.middleware');

const router = express.Router();

router.use(authenticate);
router.use(authorize('owner'));


router.get('/', branchController.listBranches);


router.get('/consolidated-dashboard', branchController.getConsolidatedDashboard);


router.get('/:id', branchController.getBranch);


router.post('/', branchController.createBranch);


router.put('/:id', branchController.updateBranch);


router.delete('/:id', branchController.deactivateBranch);

module.exports = router;