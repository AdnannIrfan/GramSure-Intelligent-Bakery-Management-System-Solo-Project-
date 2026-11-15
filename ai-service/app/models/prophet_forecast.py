"""
GramSure AI Service - Facebook Prophet demand forecasting
Ref: scope doc §6.10, §14 (Taylor & Letham, 2018)

Predicts tomorrow's recommended production quantity per product using
historical sales data, day-of-week seasonality, and (optionally) holiday
calendars.
"""
import pandas as pd
from prophet import Prophet
from datetime import datetime, timedelta
from collections import defaultdict

from app.core.config import settings

MIN_DATA_POINTS = 14  # scope doc §7: bakeries with <3 months history have lower confidence


def _group_sales_by_product(sales_history: list[dict]) -> dict:
    grouped = defaultdict(list)
    for row in sales_history:
        grouped[row["product_name"]].append(row)
    return grouped


def generate_prophet_forecast(branch_id: str, sales_history: list[dict]) -> list[dict]:
    """
    Trains one Prophet model per product using that product's daily sales
    history, then predicts tomorrow's demand.
    """
    grouped = _group_sales_by_product(sales_history)
    tomorrow = (datetime.utcnow() + timedelta(days=1)).date()
    forecasts = []

    for product_name, rows in grouped.items():
        if len(rows) < MIN_DATA_POINTS:
            # Not enough history for a reliable Prophet forecast — fall back
            # to a simple recent average (still useful, lower confidence)
            avg_units = sum(float(r["units"]) for r in rows) / len(rows)
            forecasts.append({
                "product_name": product_name,
                "forecast_date": str(tomorrow),
                "recommended_quantity": max(0, round(avg_units)),
                "confidence": "low",
            })
            continue

        df = pd.DataFrame(rows).rename(columns={"sale_date": "ds", "units": "y"})
        df["ds"] = pd.to_datetime(df["ds"])
        df["y"] = df["y"].astype(float)

        model = Prophet(
            daily_seasonality=False,
            weekly_seasonality=True,
            yearly_seasonality=len(rows) >= 365,
        )
        model.fit(df)

        future = model.make_future_dataframe(periods=1)
        prediction = model.predict(future)
        tomorrow_row = prediction.iloc[-1]

        recommended_quantity = max(0, round(tomorrow_row["yhat"]))
        confidence = "high" if len(rows) >= 60 else "medium"

        forecasts.append({
            "product_name": product_name,
            "forecast_date": str(tomorrow),
            "recommended_quantity": recommended_quantity,
            "confidence": confidence,
        })

    return forecasts