
import os
import pickle
import numpy as np
from sklearn.ensemble import IsolationForest
from datetime import datetime

from app.core.config import settings
from app.services.suspicion_index import get_batch_history_for_branch, has_sufficient_history
from app.services.data_preprocessing import remove_outlier_noise


def train_isolation_forest_for_branch(branch_id: str) -> dict:
    """
    Trains a branch-specific Isolation Forest model on up to 180 days
    of production batch history and saves it to trained_models/.
    Returns metadata about the training run.
    """
    if not has_sufficient_history(branch_id):
        return {
            "trained": False,
            "reason": f"Branch has fewer than {settings.MIN_HISTORICAL_DAYS_FOR_ML} days of history. "
                      f"Using rule-based thresholds until sufficient data accumulates.",
        }

    batches = get_batch_history_for_branch(branch_id, days=180)
    if len(batches) < 10:
        return {"trained": False, "reason": "Not enough batch records to train a reliable model."}

    variances = remove_outlier_noise([b["variance_percent"] for b in batches])

    X = np.array([
        [b["variance_percent"], b["flour_used_kg"], b["actual_units"], b["expected_units"]]
        for b in batches
    ])

    model = IsolationForest(
        contamination=settings.ISOLATION_FOREST_CONTAMINATION,
        random_state=42,
        n_estimators=150,
    )
    model.fit(X)

    os.makedirs(settings.TRAINED_MODELS_DIR, exist_ok=True)
    model_path = os.path.join(settings.TRAINED_MODELS_DIR, f"isolation_forest_{branch_id}.pkl")
    with open(model_path, "wb") as f:
        pickle.dump(model, f)

    return {
        "trained": True,
        "branch_id": branch_id,
        "model_path": model_path,
        "training_samples": len(batches),
        "trained_at": datetime.utcnow().isoformat(),
    }


def load_trained_model(branch_id: str):
    """Loads a previously trained, branch-specific Isolation Forest model, if it exists."""
    model_path = os.path.join(settings.TRAINED_MODELS_DIR, f"isolation_forest_{branch_id}.pkl")
    if not os.path.exists(model_path):
        return None
    with open(model_path, "rb") as f:
        return pickle.load(f)


def retrain_all_branches(branch_ids: list[str]) -> list[dict]:
    """
    Batch retraining entry point — intended to be run on a schedule
    (e.g. weekly cron) to keep each branch's model current.
    """
    results = []
    for branch_id in branch_ids:
        try:
            result = train_isolation_forest_for_branch(branch_id)
            results.append(result)
        except Exception as e:
            results.append({"trained": False, "branch_id": branch_id, "reason": str(e)})
    return results