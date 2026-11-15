import os
import numpy as np
from datetime import datetime

from app.core.config import settings
from app.core.db import get_db_cursor
from app.services.data_preprocessing import clean_batch_records

SEQUENCE_LENGTH = 10
NEAR_THRESHOLD_BAND = (1.0, 2.0)
MIN_SUSPICIOUS_STREAK = 6
FEATURES_PER_STEP = 3

LSTM_MODEL_PATH = os.path.join(settings.TRAINED_MODELS_DIR, "lstm_sequence_model.keras")


def _fetch_all_batches():
    with get_db_cursor() as cur:
        cur.execute(
            """
            SELECT id, staff_id, branch_id, product_name, flour_used_kg,
                   expected_units, actual_units, variance_percent, fraud_flag, created_at
            FROM production_batches
            WHERE staff_id IS NOT NULL
            ORDER BY staff_id, created_at ASC
            """
        )
        rows = cur.fetchall()
    return clean_batch_records(rows)


def _build_sequences(batches: list[dict]):
    from collections import defaultdict

    grouped = defaultdict(list)
    for b in batches:
        grouped[b["staff_id"]].append(b)

    X, y = [], []

    for staff_id, staff_batches in grouped.items():
        if len(staff_batches) < SEQUENCE_LENGTH:
            continue

        for start in range(0, len(staff_batches) - SEQUENCE_LENGTH + 1):
            window = staff_batches[start:start + SEQUENCE_LENGTH]

            features = []
            variances = []
            for b in window:
                variance = float(b["variance_percent"])
                flour = float(b["flour_used_kg"])
                yield_ratio = (
                    float(b["actual_units"]) / float(b["expected_units"])
                    if float(b["expected_units"]) > 0 else 1.0
                )
                features.append([variance, flour, yield_ratio])
                variances.append(abs(variance))

            near_threshold_count = sum(
                1 for v in variances if NEAR_THRESHOLD_BAND[0] <= v <= NEAR_THRESHOLD_BAND[1]
            )
            label = 1 if near_threshold_count >= MIN_SUSPICIOUS_STREAK else 0

            X.append(features)
            y.append(label)

    return np.array(X, dtype=np.float32), np.array(y, dtype=np.float32)


def _normalize_features(X: np.ndarray):
    mins = X.reshape(-1, X.shape[-1]).min(axis=0)
    maxs = X.reshape(-1, X.shape[-1]).max(axis=0)
    ranges = np.where((maxs - mins) == 0, 1, maxs - mins)
    X_norm = (X - mins) / ranges
    return X_norm, mins.tolist(), ranges.tolist()


def train_lstm_model() -> dict:
    import tensorflow as tf
    from tensorflow import keras

    batches = _fetch_all_batches()
    if len(batches) < 50:
        return {"trained": False, "reason": f"Only {len(batches)} batches available; need more historical data."}

    X, y = _build_sequences(batches)
    if len(X) < 20:
        return {"trained": False, "reason": f"Only {len(X)} sequence windows could be built; need more per-staff batch history."}

    X_norm, feature_mins, feature_ranges = _normalize_features(X)

    rng = np.random.default_rng(42)
    indices = rng.permutation(len(X_norm))
    split = int(len(indices) * 0.8)
    train_idx, val_idx = indices[:split], indices[split:]

    X_train, y_train = X_norm[train_idx], y[train_idx]
    X_val, y_val = X_norm[val_idx], y[val_idx]

    # Output bias initialization (documented TensorFlow best practice for
    # imbalanced classification): starts the model's initial predictions
    # already matching the true positive rate, rather than a naive 50/50
    # default, which helps prevent early collapse to "always predict
    # normal" observed in previous training attempts.
    neg_count_init = int((y_train == 0).sum())
    pos_count_init = int((y_train == 1).sum())
    initial_bias = float(np.log(pos_count_init / neg_count_init)) if pos_count_init > 0 else 0.0

    model = keras.Sequential([
        keras.layers.Input(shape=(SEQUENCE_LENGTH, FEATURES_PER_STEP)),
        keras.layers.LSTM(16, return_sequences=False),
        keras.layers.Dense(8, activation="relu"),
        keras.layers.Dropout(0.3),
        keras.layers.Dense(1, activation="sigmoid", bias_initializer=keras.initializers.Constant(initial_bias)),
    ])

    model.compile(
        optimizer=keras.optimizers.Adam(learning_rate=0.0003),
        loss="binary_crossentropy",
        metrics=["accuracy", keras.metrics.Precision(name="precision"), keras.metrics.Recall(name="recall")],
    )

    neg_count = int((y_train == 0).sum())
    pos_count = int((y_train == 1).sum())
    raw_ratio = neg_count / pos_count if pos_count > 0 else 1.0
    dampened_ratio = raw_ratio ** 0.5
    class_weight = {0: 1.0, 1: dampened_ratio}
    print(f"Class distribution -> normal: {neg_count}, suspicious: {pos_count}")
    print(f"Class weights (dampened) -> {class_weight}")
    print(f"Initial output bias -> {initial_bias:.4f}")

    # Monitor recall directly: val_loss can improve even while the model
    # ignores the minority class entirely (as seen in earlier attempts),
    # so tracking val_recall ensures we save the version of the model
    # that actually catches suspicious cases.
    early_stopping = keras.callbacks.EarlyStopping(
        monitor="val_recall", mode="max", patience=15, restore_best_weights=True
    )

    history = model.fit(
        X_train, y_train,
        validation_data=(X_val, y_val) if len(X_val) > 0 else None,
        epochs=60,
        batch_size=16,
        class_weight=class_weight,
        callbacks=[early_stopping],
        verbose=1,
    )

    os.makedirs(settings.TRAINED_MODELS_DIR, exist_ok=True)
    model.save(LSTM_MODEL_PATH)

    import json
    scaling_path = LSTM_MODEL_PATH.replace(".keras", "_scaling.json")
    with open(scaling_path, "w") as f:
        json.dump({"mins": feature_mins, "ranges": feature_ranges}, f)

    final_metrics = {
        "train_accuracy": float(history.history["accuracy"][-1]),
        "train_precision": float(history.history["precision"][-1]),
        "train_recall": float(history.history["recall"][-1]),
    }
    if "val_accuracy" in history.history:
        final_metrics["val_accuracy"] = float(history.history["val_accuracy"][-1])
        final_metrics["val_precision"] = float(history.history["val_precision"][-1])
        final_metrics["val_recall"] = float(history.history["val_recall"][-1])

    return {
        "trained": True,
        "model_path": LSTM_MODEL_PATH,
        "training_windows": len(X),
        "positive_windows": int(y.sum()),
        "epochs_trained": len(history.history["loss"]),
        "trained_at": datetime.utcnow().isoformat(),
        "metrics": final_metrics,
    }


if __name__ == "__main__":
    result = train_lstm_model()
    print(result)