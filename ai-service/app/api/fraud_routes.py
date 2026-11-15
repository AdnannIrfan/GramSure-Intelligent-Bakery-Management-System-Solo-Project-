
from fastapi import APIRouter, HTTPException

from app.schemas.fraud_schema import FraudAnalysisRequest, FraudAnalysisResponse
from app.services.suspicion_index import get_batch_history_for_branch
from app.models.isolation_forest import detect_anomalies_isolation_forest
from app.models.lstm_sequence import detect_sequential_anomalies

router = APIRouter(prefix="/api/fraud", tags=["fraud"])


@router.post("/analyze", response_model=FraudAnalysisResponse)
async def analyze_fraud(request: FraudAnalysisRequest):
    """
    Runs Isolation Forest (per-batch anomaly scoring) and LSTM
    (sequential pattern detection for near-threshold manipulation)
    against a branch's recent production/sales/expense data.
    """
    batches = get_batch_history_for_branch(request.branch_id)

    if not batches:
        return FraudAnalysisResponse(anomalies=[])

    anomalies = []

    
    try:
        iso_anomalies = detect_anomalies_isolation_forest(batches)
        anomalies.extend(iso_anomalies)
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Isolation Forest analysis failed: {str(e)}")

    
    try:
        lstm_anomalies = detect_sequential_anomalies(batches)
        anomalies.extend(lstm_anomalies)
    except Exception as e:
        
        print(f"LSTM analysis skipped: {str(e)}")

    return FraudAnalysisResponse(anomalies=anomalies)


@router.get("/health")
async def fraud_health_check():
    return {"status": "ok", "module": "fraud-detection"}