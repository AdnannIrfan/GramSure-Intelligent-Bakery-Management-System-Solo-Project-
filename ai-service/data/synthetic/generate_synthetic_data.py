
import numpy as np
import pandas as pd
from datetime import datetime, timedelta
import uuid


def generate_synthetic_batches(n_normal: int = 500, n_fraud: int = 50, seed: int = 42) -> pd.DataFrame:
    """
    Returns a labeled DataFrame of synthetic production batches:
    columns: id, staff_id, product_name, flour_used_kg, expected_units,
             actual_units, variance_percent, is_fraud, created_at
    """
    rng = np.random.default_rng(seed)
    products = ["Kara Biscuit", "Naan", "Rusk", "Cake Slice", "Bread Loaf"]
    staff_ids = [f"staff_{i}" for i in range(1, 11)]
    units_per_kg = 40  

    records = []
    base_date = datetime.utcnow() - timedelta(days=180)


    for _ in range(n_normal):
        flour_used = round(rng.uniform(2.0, 8.0), 2)
        expected_units = round(flour_used * units_per_kg)
        # Normal noise: small random variance within tolerance
        noise_percent = rng.normal(0, 1.0)
        actual_units = round(expected_units * (1 + noise_percent / 100))
        variance_percent = ((actual_units - expected_units) / expected_units) * 100

        records.append({
            "id": str(uuid.uuid4()),
            "staff_id": rng.choice(staff_ids),
            "product_name": rng.choice(products),
            "flour_used_kg": flour_used,
            "expected_units": expected_units,
            "actual_units": actual_units,
            "variance_percent": round(variance_percent, 2),
            "is_fraud": False,
            "created_at": base_date + timedelta(days=int(rng.integers(0, 180))),
        })

    
    for _ in range(n_fraud):
        flour_used = round(rng.uniform(2.0, 8.0), 2)
        expected_units = round(flour_used * units_per_kg)
        # Fraud: staff under-reports units while consuming normal flour,
        # OR inflates per-unit dough weight to produce fewer units
        fraud_percent = rng.uniform(-15, -3)  # scope doc §3: ingredient fraud pattern
        actual_units = round(expected_units * (1 + fraud_percent / 100))
        variance_percent = ((actual_units - expected_units) / expected_units) * 100

        records.append({
            "id": str(uuid.uuid4()),
            "staff_id": rng.choice(staff_ids),
            "product_name": rng.choice(products),
            "flour_used_kg": flour_used,
            "expected_units": expected_units,
            "actual_units": actual_units,
            "variance_percent": round(variance_percent, 2),
            "is_fraud": True,
            "created_at": base_date + timedelta(days=int(rng.integers(0, 180))),
        })

    df = pd.DataFrame(records).sample(frac=1, random_state=seed).reset_index(drop=True)
    return df


if __name__ == "__main__":
    df = generate_synthetic_batches()
    output_path = "synthetic_batches.csv"
    df.to_csv(output_path, index=False)
    print(f"Generated {len(df)} synthetic batch records -> {output_path}")
    print(f"Fraud rate: {df['is_fraud'].mean() * 100:.1f}%")