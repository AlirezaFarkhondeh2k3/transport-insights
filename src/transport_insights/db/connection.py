from sqlalchemy import create_engine
from sqlalchemy.engine import Engine

from transport_insights.config import get_db_config


def create_db_engine() -> Engine:
    """
    Create a SQLAlchemy engine for PostgreSQL using env-based configuration.
    """
    cfg = get_db_config()
    url = (
        f"postgresql+psycopg2://{cfg.user}:{cfg.password}"
        f"@{cfg.host}:{cfg.port}/{cfg.database}"
    )
    return create_engine(url, echo=False, future=True)
