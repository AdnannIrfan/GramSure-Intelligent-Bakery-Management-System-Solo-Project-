"""
GramSure AI Service - Pydantic schemas for the Demand Forecasting API
Ref: scope doc §6.10
"""
from pydantic import BaseModel
from typing import List


class SalesHistoryRow(BaseModel):
    product_name: str
    sale_date: str  # ISO date string, e.g. '2026-01-14'
    units: float


class ForecastRequest(BaseModel):
    branch_id: str
    sales_history: List[SalesHistoryRow]


class ForecastResult(BaseModel):
    product_name: str
    forecast_date: str
    recommended_quantity: int
    confidence: str  # 'low' | 'medium' | 'high'


class ForecastResponse(BaseModel):
    forecasts: List[ForecastResult]