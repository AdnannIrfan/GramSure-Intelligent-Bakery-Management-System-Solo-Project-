
from fastapi import APIRouter, HTTPException

from app.schemas.face_schema import FaceEncodeRequest, FaceEncodeResponse, FaceVerifyRequest, FaceVerifyResponse
from app.models.face_verification import encode_face, verify_face

router = APIRouter(prefix="/api/face", tags=["face"])


@router.post("/encode", response_model=FaceEncodeResponse)
async def encode(request: FaceEncodeRequest):
    """
    Registers a staff member's reference face encoding at onboarding.
    Called once by backend/src/modules/07-staff-attendance/faceVerification.service.js
    """
    encoding = encode_face(request.image_base64)
    if encoding is None:
        raise HTTPException(status_code=400, detail="No face detected in the provided image")
    return FaceEncodeResponse(encoding=encoding)


@router.post("/verify", response_model=FaceVerifyResponse)
async def verify(request: FaceVerifyRequest):
    """
    Compares a live selfie against a stored face encoding for check-in verification.
    """
    if not request.stored_encoding:
        raise HTTPException(status_code=400, detail="stored_encoding is required")

    score = verify_face(request.image_base64, request.stored_encoding)
    if score is None:
        raise HTTPException(status_code=400, detail="No face detected in the provided image")

    return FaceVerifyResponse(score=score)


@router.get("/health")
async def face_health_check():
    return {"status": "ok", "module": "face-verification"}