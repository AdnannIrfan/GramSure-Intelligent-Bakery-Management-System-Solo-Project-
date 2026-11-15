"""
GramSure AI Service - LSTM sequential pattern detection
Ref: scope doc §6.9, §14 (Hochreiter & Schmidhuber, 1997)

Detects sequential patterns a human reviewer would miss - e.g. an employee
whose yield deficits are consistently JUST below the 2% alert threshold
over many batches. Uses a genuinely trained Keras LSTM model
(app/services/lstm_training.py) when available; falls back to the
original rule-based heuristic if no trained model exists yet (e.g. on
first run, before enough historical data has accumulated per scope doc §7).
"""
import os
import json
import numpy as np
from collections import defaultdict

from app.core.config import settings

SEQUENCE_LENGTH = 10
NEAR_THRESHOLD_BAND = (1.0, 2.0)
MIN_SUSPICIOUS_STREAK = 6

LSTM_MODEL_PATH = os.path.join(settings.TRAINED_MODELS_DIR, "lstm_sequence_model.keras")
SCALING_PATH = LSTM_MODEL_PATH.replace(".keras", "_scaling.json")

_model = None
_scaling = None
_model_load_attempted = False


def _try_load_model():
    global _model, _scaling, _model_load_attempted
    if _model_load_attempted:
        return
    _model_load_attempted = True

    if not os.path.exists(LSTM_MODEL_PATH) or not os.path.exists(SCALING_PATH):
        return

    try:
        from tensorflow import keras
        _model = keras.models.load_model(LSTM_MODEL_PATH)
        with open(SCALING_PATH) as f:
            _scaling = json.load(f)
        print(f"Loaded trained LSTM model from {LSTM_MODEL_PATH}")
    except Exception as e:
        print(f"Failed to load trained LSTM model, falling back to heuristic: {e}")
        _model = None


def _group_by_staff(batches: list[dict]) -> dict:
    grouped = defaultdict(list)
    for b in batches:
        if b.get("staff_id"):
            grouped[b["staff_id"]].append(b)
    for staff_id in grouped:
        grouped[staff_id].sort(key=lambda b: b.get("created_at", ""))
    return grouped


def _predict_with_trained_model(window: list[dict]) -> float:
    features = []
    for b in window:
        variance = float(b.get("variance_percent", 0))
        flour = float(b.get("flour_used_kg", 0))
        expected = float(b.get("expected_units", 0))
        actual = float(b.get("actual_units", 0))
        yield_ratio = actual / expected if expected > 0 else 1.0
        features.append([variance, flour, yield_ratio])

    X = np.array([features], dtype=np.float32)
    mins = np.array(_scaling["mins"], dtype=np.float32)
    ranges = np.array(_scaling["ranges"], dtype=np.float32)
    X_norm = (X - mins) / ranges

    probability = float(_model.predict(X_norm, verbose=0)[0][0])
    return round(probability * 100, 2)


def detect_sequential_anomalies(batches: list[dict]) -> list[dict]:
    """
    Detects sequential fraud patterns per staff member. Uses the trained
    LSTM model when available; otherwise falls back to the rule-based
    heuristic, ensuring the system still works before a model has been
    trained (e.g. insufficient historical data per scope doc §7).
    """
    _try_load_model()

    grouped = _group_by_staff(batches)
    anomalies = []

    for staff_id, staff_batches in grouped.items():
        if len(staff_batches) < SEQUENCE_LENGTH:
            continue

        recent = staff_batches[-SEQUENCE_LENGTH:]

        if _model is not None and _scaling is not None:
            risk_score = _predict_with_trained_model(recent)
            variances = [abs(float(b.get("variance_percent", 0))) for b in recent]
            avg_variance = float(np.mean(variances))

            if risk_score >= 50.0:
                anomalies.append({
                    "type": "lstm_sequence",
                    "staff_id": staff_id,
                    "reference_type": "staff_pattern",
                    "reference_id": recent[-1].get("id"),
                    "risk_score": risk_score,
                    "details": (
                        f"Trained LSTM model detected sequential risk pattern "
                        f"(confidence: {risk_score:.0f}%, avg variance {avg_variance:.1f}% "
                        f"over last {SEQUENCE_LENGTH} batches)"
                    ),
                })
        else:
            variances = np.array([abs(float(b.get("variance_percent", 0))) for b in recent])
            near_threshold_count = np.sum(
                (variances >= NEAR_THRESHOLD_BAND[0]) & (variances <= NEAR_THRESHOLD_BAND[1])
            )
            if near_threshold_count >= MIN_SUSPICIOUS_STREAK:
                avg_variance = float(np.mean(variances))
                risk_score = min(100, round((near_threshold_count / SEQUENCE_LENGTH) * 100))
                anomalies.append({
                    "type": "lstm_sequence",
                    "staff_id": staff_id,
                    "reference_type": "staff_pattern",
                    "reference_id": recent[-1].get("id"),
                    "risk_score": risk_score,
                    "details": (
                        f"Sequential pattern detected (rule-based fallback, no trained model yet): "
                        f"{near_threshold_count}/{SEQUENCE_LENGTH} recent batches show yield deficits "
                        f"just under the alert threshold (avg variance {avg_variance:.1f}%)"
                    ),
                })

    return anomalies