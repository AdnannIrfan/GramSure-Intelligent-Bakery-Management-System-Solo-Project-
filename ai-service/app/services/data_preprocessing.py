
from datetime import datetime
from typing import List, Dict


def clean_batch_records(raw_batches: List[Dict]) -> List[Dict]:
    """
    Normalizes production batch records fetched from PostgreSQL:
    - Converts Decimal/None fields to plain floats
    - Drops records with missing critical fields
    - Ensures consistent key naming
    """
    cleaned = []
    for row in raw_batches:
        try:
            cleaned.append({
                "id": str(row.get("id")),
                "staff_id": str(row.get("staff_id")) if row.get("staff_id") else None,
                "branch_id": str(row.get("branch_id")),
                "product_name": row.get("product_name"),
                "flour_used_kg": float(row.get("flour_used_kg") or 0),
                "expected_units": float(row.get("expected_units") or 0),
                "actual_units": float(row.get("actual_units") or 0),
                "variance_percent": float(row.get("variance_percent") or 0),
                "fraud_flag": bool(row.get("fraud_flag")),
                "created_at": row.get("created_at").isoformat() if isinstance(row.get("created_at"), datetime) else str(row.get("created_at")),
            })
        except (TypeError, ValueError):
            # Skip malformed rows rather than crashing the whole analysis
            continue
    return cleaned


def remove_outlier_noise(values: List[float], z_threshold: float = 3.5) -> List[float]:
    """
    Removes extreme data-entry-error outliers (e.g. a typo like 9999 units)
    using a modified z-score, before this data is used for model training.
    """
    if len(values) < 3:
        return values

    median = sorted(values)[len(values) // 2]
    mad = sum(abs(v - median) for v in values) / len(values)
    if mad == 0:
        return values

    filtered = []
    for v in values:
        modified_z = 0.6745 * (v - median) / mad
        if abs(modified_z) <= z_threshold:
            filtered.append(v)
    return filtered


def fill_missing_days(sales_by_date: Dict[str, float], start_date: str, end_date: str) -> Dict[str, float]:
    """
    Fills gaps in a date-indexed sales dict with 0, so Prophet sees a
    continuous daily series (missing days should mean zero sales, not
    absence of data).
    """
    from datetime import timedelta
    start = datetime.fromisoformat(start_date).date()
    end = datetime.fromisoformat(end_date).date()

    filled = {}
    current = start
    while current <= end:
        key = current.isoformat()
        filled[key] = sales_by_date.get(key, 0.0)
        current += timedelta(days=1)
    return filled