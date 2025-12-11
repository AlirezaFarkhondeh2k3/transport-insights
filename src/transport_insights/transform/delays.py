from datetime import datetime


def compute_delay_minutes(scheduled: datetime, actual: datetime) -> float:
    """
    Compute delay in minutes as (actual - scheduled).

    Positive -> late, negative -> early.
    """
    delta = actual - scheduled
    return delta.total_seconds() / 60.0


def is_delayed(delay_minutes: float, threshold: float = 5.0) -> bool:
    """
    Return True if delay is greater than the threshold (in minutes).
    """
    return delay_minutes > threshold
