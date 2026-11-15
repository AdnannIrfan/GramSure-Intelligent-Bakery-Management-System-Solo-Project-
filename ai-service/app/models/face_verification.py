"""
GramSure AI Service - Face verification using OpenCV
Ref: scope doc §6.7 (Selfie check-in, prevents buddy punching)

Uses OpenCV's histogram comparison as a lightweight, dependency-light
face similarity approach. Includes face alignment and lighting
normalization to improve consistency between separate photo sessions.
"""
import base64
import numpy as np
import cv2

from app.core.config import settings

FACE_CASCADE = cv2.CascadeClassifier(cv2.data.haarcascades + "haarcascade_frontalface_default.xml")
EYE_CASCADE = cv2.CascadeClassifier(cv2.data.haarcascades + "haarcascade_eye.xml")
ENCODING_SIZE = (150, 150)  # larger, more detail preserved


def _decode_image(image_base64: str) -> np.ndarray:
    img_bytes = base64.b64decode(image_base64.split(",")[-1])
    img_array = np.frombuffer(img_bytes, dtype=np.uint8)
    return cv2.imdecode(img_array, cv2.IMREAD_COLOR)


def _detect_face(image: np.ndarray):
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    faces = FACE_CASCADE.detectMultiScale(gray, scaleFactor=1.1, minNeighbors=5, minSize=(80, 80))
    if len(faces) == 0:
        return None
    x, y, w, h = max(faces, key=lambda f: f[2] * f[3])

    # Add a small margin around the detected box (10%) so we consistently
    # capture the same relative face region across different photos,
    # rather than a tight crop that varies with detection jitter.
    margin_x = int(w * 0.1)
    margin_y = int(h * 0.1)
    x1 = max(0, x - margin_x)
    y1 = max(0, y - margin_y)
    x2 = min(gray.shape[1], x + w + margin_x)
    y2 = min(gray.shape[0], y + h + margin_y)

    return gray[y1:y2, x1:x2]


def _preprocess_face(face_gray: np.ndarray) -> np.ndarray:
    """
    Normalizes a detected face crop for more consistent histogram comparison:
    resize to a fixed size, apply CLAHE (adaptive histogram equalization,
    more robust to lighting variation than simple equalizeHist), then
    lightly blur to reduce noise sensitivity.
    """
    resized = cv2.resize(face_gray, ENCODING_SIZE)

    # CLAHE handles uneven/directional lighting far better than global
    # equalizeHist, which is a major source of score instability between
    # photo sessions taken in different lighting.
    clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8, 8))
    equalized = clahe.apply(resized)

    # Light Gaussian blur reduces sensitivity to compression/sensor noise
    smoothed = cv2.GaussianBlur(equalized, (3, 3), 0)

    return smoothed


def encode_face(image_base64: str):
    """
    Detects a face and returns a normalized histogram encoding
    (list of floats, JSON-serializable) representing that face.
    """
    image = _decode_image(image_base64)
    face = _detect_face(image)
    if face is None:
        return None

    processed = _preprocess_face(face)
    hist = cv2.calcHist([processed], [0], None, [256], [0, 256])
    normalized = cv2.normalize(hist, hist).flatten()
    return normalized.tolist()


def verify_face(image_base64: str, stored_encoding: list) -> float | None:
    """
    Compares a live selfie's encoding against a stored encoding using
    histogram correlation. Returns a similarity score between 0 and 1.
    """
    image = _decode_image(image_base64)
    face = _detect_face(image)
    if face is None:
        return None

    processed = _preprocess_face(face)
    hist = cv2.calcHist([processed], [0], None, [256], [0, 256])
    live_encoding = cv2.normalize(hist, hist).flatten()

    stored_array = np.array(stored_encoding, dtype=np.float32)
    correlation = cv2.compareHist(
        live_encoding.astype(np.float32), stored_array, cv2.HISTCMP_CORREL
    )
    score = max(0.0, min(1.0, (correlation + 1) / 2))
    return round(float(score), 4)

    