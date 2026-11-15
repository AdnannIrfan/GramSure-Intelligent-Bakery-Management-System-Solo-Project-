
from fastapi import APIRouter, HTTPException

from app.schemas.forecast_schema import ForecastRequest, ForecastResponse
from app.models.prophet_forecast import generate_prophet_forecast

router = APIRouter(prefix="/api/forecast", tags=["forecast"])


@router.post("/predict", response_model=ForecastResponse)
async def predict_demand(request: ForecastRequest):
    """
    Uses Facebook Prophet to predict tomorrow's recommended production
    quantity per product, based on historical sales, day-of-week patterns,
    and (optionally) holiday/event calendars.
    """
    if not request.sales_history:
        raise HTTPException(status_code=400, detail="sales_history is required and cannot be empty")

    try:
        
        sales_history_dicts = [row.model_dump() for row in request.sales_history]
        forecasts = generate_prophet_forecast(request.branch_id, sales_history_dicts)
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Forecast generation failed: {str(e)}")

    return ForecastResponse(forecasts=forecasts)


@router.get("/health")
async def forecast_health_check():
    return {"status": "ok", "module": "demand-forecasting"}