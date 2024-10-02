from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# Reemplaza los valores con tu configuración de PostgreSQL
DATABASE_URL = "postgresql+psycopg2://myuser:mypassword@localhost:3007/avocado"

# Crea el engine para PostgreSQL
engine = create_engine(DATABASE_URL)

# Crea una sesión local de SQLAlchemy
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Base para los modelos
Base = declarative_base()
