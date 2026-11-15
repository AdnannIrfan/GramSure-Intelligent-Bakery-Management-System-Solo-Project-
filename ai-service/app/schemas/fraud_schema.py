"""
GramSure AI Service - Pydantic schemas for the Fraud Detection API
Ref: scope doc §6.9
"""
from pydantic import BaseModel
from typing import Optional, List


class FraudAnalysisRequest(BaseModel):
    branch_id: str


class AnomalyResult(BaseModel):
    type: str  # 'isolation_forest' | 'lstm_sequence'
    staff_id: Optional[str] = None
    reference_type: Optional[str] = None
    reference_id: Optional[str] = None
    risk_score: float
    details: Optional[str] = None


class FraudAnalysisResponse(BaseModel):
    anomalies: List[AnomalyResult]