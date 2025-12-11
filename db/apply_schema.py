from pathlib import Path
from sqlalchemy import text

from transport_insights.db.connection import create_db_engine


def apply_schema(schema_dir: str = "db/schema") -> None:
    engine = create_db_engine()
    base_path = Path(schema_dir)

    sql_files = [
        "dim_route.sql",
        "dim_stop.sql",
        "dim_date.sql",
        "fact_delays.sql",
        "route_delay_stats.sql",
    ]

    with engine.begin() as conn:
        for name in sql_files:
            path = base_path / name
            sql = path.read_text(encoding="utf-8")
            conn.execute(text(sql))
