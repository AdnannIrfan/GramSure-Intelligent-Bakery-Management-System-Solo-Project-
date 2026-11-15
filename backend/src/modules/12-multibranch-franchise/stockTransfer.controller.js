const stockTransferModel = require('./stockTransfer.model');
const transferService = require('./stockTransfer.service');
const branchModel = require('./branch.model');

const wrap = (fn) => (req, res, next) => Promise.resolve(fn(req, res, next)).catch(next);

function actorOf(req) {
  return { id: req.user.sub, role: req.user.role, branchId: req.user.branchId };
}

async function initiateTransfer(req, res) {
  const { fromBranchId, toBranchId, materialName, quantity } = req.body;

  if (!fromBranchId || !toBranchId || !materialName || !quantity) {
    return res.status(400).json({
      success: false,
      message: 'fromBranchId, toBranchId, materialName, and quantity are required',
    });
  }

  // unit is taken from the source stock item, not from the request body.
  const transfer = await transferService.initiateTransfer({
    fromBranchId, toBranchId, materialName, quantity, actor: actorOf(req),
  });
  return res.status(201).json({ success: true, data: transfer });
}

async function completeTransfer(req, res) {
  const updated = await transferService.completeTransfer({ id: req.params.id, actor: actorOf(req) });
  return res.status(200).json({ success: true, data: updated });
}

async function cancelTransfer(req, res) {
  const updated = await transferService.cancelTransfer({ id: req.params.id, actor: actorOf(req) });
  return res.status(200).json({ success: true, data: updated });
}

async function listTransfers(req, res) {
  const actor = actorOf(req);
  const { direction } = req.query;
  let transfers;

  if (actor.role === 'owner') {
    if (req.query.branchId) {
      if (!transferService.UUID_RE.test(req.query.branchId)) {
        return res.status(400).json({ success: false, message: 'branchId must be a valid id' });
      }
      const branch = await branchModel.findById(req.query.branchId);
      if (!branch || branch.owner_id !== actor.id) {
        return res.status(404).json({ success: false, message: 'Branch not found' });
      }
      transfers = await stockTransferModel.findAllByBranch(branch.id, direction);
    } else {
      transfers = await stockTransferModel.findAllForOwner(actor.id, direction);
    }
  } else {
    if (!actor.branchId) {
      return res.status(400).json({ success: false, message: 'No branch assigned to this user' });
    }
    if (req.query.branchId && req.query.branchId !== String(actor.branchId)) {
      return res.status(403).json({ success: false, message: 'You can only view your own branch' });
    }
    transfers = await stockTransferModel.findAllByBranch(actor.branchId, direction);
  }
  return res.status(200).json({ success: true, data: transfers });
}

module.exports = {
  initiateTransfer: wrap(initiateTransfer),
  completeTransfer: wrap(completeTransfer),
  cancelTransfer: wrap(cancelTransfer),
  listTransfers: wrap(listTransfers),
};