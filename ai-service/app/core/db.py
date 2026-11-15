
import psycopg2
import psycopg2.extras
from contextlib import contextmanager
from app.core.config import settings


def get_connection():
    return psycopg2.connect(
        host=settings.DB_HOST,
        port=settings.DB_PORT,
        dbname=settings.DB_NAME,
        user=settings.DB_USER,
        password=settings.DB_PASSWORD,
        cursor_factory=psycopg2.extras.RealDictCursor,
    )


@contextmanager
def get_db_cursor(commit: bool = False):
    """
    Context manager for a DB cursor.
    Usage:
        with get_db_cursor() as cur:
            cur.execute("SELECT * FROM production_batches WHERE branch_id = %s", (branch_id,))
            rows = cur.fetchall()
    """
    conn = get_connection()
    cur = conn.cursor()
    try:
        yield cur
        if commit:
            conn.commit()
    except Exception:
        conn.rollback()
        raise
    finally:
        cur.close()
        conn.close()


def test_connection() -> bool:
    try:
        with get_db_cursor() as cur:
            cur.execute("SELECT 1")
        return True
    except Exception as e:
        print(f"Database connection failed: {e}")
        return False