
import os
from dotenv import load_dotenv

load_dotenv()


class Settings:
    APP_NAME: str = "GramSure AI Service"
    ENV: str = os.getenv("ENV", "development")
    PORT: int = int(os.getenv("PORT", "8000"))

    
    DB_HOST: str = os.getenv("DB_HOST", "localhost")
    DB_PORT: int = int(os.getenv("DB_PORT", "5432"))
    DB_NAME: str = os.getenv("DB_NAME", "gramsure")
    DB_USER: str = os.getenv("DB_USER", "postgres")
    DB_PASSWORD: str = os.getenv("DB_PASSWORD", "")

    
    TRAINED_MODELS_DIR: str = os.getenv("TRAINED_MODELS_DIR", "trained_models")
    ISOLATION_FOREST_MODEL_PATH: str = os.path.join(TRAINED_MODELS_DIR, "isolation_forest.pkl")
    LSTM_MODEL_PATH: str = os.path.join(TRAINED_MODELS_DIR, "lstm_sequence.h5")
    PROPHET_MODEL_DIR: str = os.path.join(TRAINED_MODELS_DIR, "prophet")

    
    ISOLATION_FOREST_CONTAMINATION: float = float(os.getenv("ISOLATION_FOREST_CONTAMINATION", "0.05"))
    MIN_HISTORICAL_DAYS_FOR_ML: int = int(os.getenv("MIN_HISTORICAL_DAYS_FOR_ML", "60"))  # scope doc §7

    
    FACE_MATCH_THRESHOLD: float = float(os.getenv("FACE_MATCH_THRESHOLD", "0.75"))

    
    ALLOWED_ORIGINS: list = os.getenv("ALLOWED_ORIGINS", "http://localhost:5000").split(",")


settings = Settings()