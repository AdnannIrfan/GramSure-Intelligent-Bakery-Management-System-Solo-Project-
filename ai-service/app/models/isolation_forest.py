"""
GramSure AI Service - Isolation Forest anomaly detection
Ref: scope doc §6.9, §14 (Liu, Ting & Zhou, 2008)

Detects statistical outliers across production batches: unusual yield
variance, flour-to-unit ratios, and timing patterns that deviate from
the bakery's own historical norm.
"""
import numpy as np
from sklearn.ensemble import IsolationForest

from app.core.config import settings


def _extract_features(batches: list[dict]) -> np.ndarray:
    """
    Converts raw batch records into a numeric feature matrix:
    [variance_percent, flour_used_kg, actual_units, expected_units]
    """
    features = []
    for b in batches:
        features.append([
            float(b.get("variance_percent", 0)),
            float(b.get("flour_used_kg", 0)),
            float(b.get("actual_units", 0)),
            float(b.get("expected_units", 0)),
        ])
    return np.array(features)


def detect_anomalies_isolation_forest(batches: list[dict]) -> list[dict]:
    """
    Trains a fresh Isolation Forest on the branch's own batch history
    (per scope doc §7 constraint: requires 60-90 days of data for reliability;
    with less data it still runs but flags are treated as lower-confidence).
    """
    if len(batches) < 10:
        # Not enough data to train meaningfully — rely on rule-based thresholds instead
        return []

    X = _extract_features(batches)

    model = IsolationForest(
        contamination=settings.ISOLATION_FOREST_CONTAMINATION,
        random_state=42,
        n_estimators=100,
    )
    model.fit(X)

    predictions = model.predict(X)  # -1 = anomaly, 1 = normal
    scores = model.decision_function(X)  # lower = more anomalous

    anomalies = []
    for i, batch in enumerate(batches):
        if predictions[i] == -1:
            # Normalize decision_function score (~[-0.5, 0.5]) to a 0-100 risk score
            risk_score = min(100, max(0, round((0.5 - scores[i]) * 100)))
            anomalies.append({
                "type": "isolation_forest",
                "staff_id": batch.get("staff_id"),
                "reference_type": "production_batch",
                "reference_id": batch.get("id"),
                "risk_score": risk_score,
                "details": (
                    f"Statistical outlier detected: variance {batch.get('variance_percent', 0):.1f}%, "
                    f"flour used {batch.get('flour_used_kg', 0)}kg"
                ),
            })

    return anomalies