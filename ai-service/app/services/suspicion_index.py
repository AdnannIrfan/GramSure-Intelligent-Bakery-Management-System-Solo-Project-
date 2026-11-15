from app.core.db import get_db_cursor
from app.services.data_preprocessing import clean_batch_records
from app.core.config import settings


def get_batch_history_for_branch(branch_id: str, days: int = 90) -> list[dict]:
    """
    Fetches recent production batch history for a branch, used as
    training/inference input for both Isolation Forest and LSTM models.
    """
    with get_db_cursor() as cur:
        cur.execute(
            """
            SELECT id, staff_id, branch_id, product_name, flour_used_kg,
                   expected_units, actual_units, variance_percent, fraud_flag, created_at
            FROM production_batches
            WHERE branch_id = %s AND created_at >= NOW() - (%s || ' days')::interval
            ORDER BY created_at ASC
            """,
            (branch_id, days),
        )
        rows = cur.fetchall()

    return clean_batch_records(rows)


def has_sufficient_history(branch_id: str) -> bool:
    
    with get_db_cursor() as cur:
        cur.execute(
            """
            SELECT MIN(created_at) AS earliest
            FROM production_batches
            WHERE branch_id = %s
            """,
            (branch_id,),
        )
        result = cur.fetchone()

    if not result or not result["earliest"]:
        return False

    from datetime import datetime, timezone
    earliest = result["earliest"]
    if earliest.tzinfo is None:
        earliest = earliest.replace(tzinfo=timezone.utc)

    days_of_history = (datetime.now(timezone.utc) - earliest).days
    return days_of_history >= settings.MIN_HISTORICAL_DAYS_FOR_ML