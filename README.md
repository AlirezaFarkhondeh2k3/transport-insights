# City Transportation and Mobility Insights

End to end data platform that ingests public transit data, models it in a warehouse, calculates delay probabilities by route, time, and weekday, and exposes an interactive Power BI dashboard so commuters can choose the most reliable bus.

## Tech stack

- Python
- PostgreSQL
- SQLAlchemy
- Airflow (pipeline, planned)
- Power BI (dashboard, planned)
- pytest
- GitHub Actions CI

## Setup

```bash
python -m venv .venv
# Windows:
.venv\Scripts\activate
pip install -r requirements.txt
pytest

---

## 2. Python package

### `src/transport_insights/__init__.py`

```python
"""
Transport insights package.

Data pipeline and analytics for public transit delays.
"""
