"""
GramSure AI Service - Pydantic schemas for the Face Verification API
Ref: scope doc §6.7
"""
from pydantic import BaseModel
from typing import List, Optional


class FaceEncodeRequest(BaseModel):
    image_base64: str


class FaceEncodeResponse(BaseModel):
    encoding: List[float]


class FaceVerifyRequest(BaseModel):
    image_base64: str
    stored_encoding: List[float]


class FaceVerifyResponse(BaseModel):
    score: float