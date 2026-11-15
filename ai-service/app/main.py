
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from app.core.config import settings
from app.core.db import test_connection
from app.api import fraud_routes, forecast_routes, face_routes

app = FastAPI(
    title=settings.APP_NAME,
    description="AI microservice powering GramSure's fraud detection, forecasting, and face verification",
    version="1.0.0",
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=settings.ALLOWED_ORIGINS,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(fraud_routes.router)
app.include_router(forecast_routes.router)
app.include_router(face_routes.router)


@app.get("/")
async def root():
    return {"message": "GramSure AI Service", "status": "running", "env": settings.ENV}


@app.get("/health")
async def health_check():
    db_ok = test_connection()
    return {"status": "ok" if db_ok else "degraded", "database": "connected" if db_ok else "unreachable"}


@app.on_event("startup")
async def startup_event():
    print(f"GramSure AI Service starting on port {settings.PORT} [{settings.ENV}]")
    if not test_connection():
        print("WARNING: Database connection failed at startup.")