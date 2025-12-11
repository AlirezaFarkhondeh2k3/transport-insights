from datetime import datetime, timedelta

from transport_insights.transform.delays import compute_delay_minutes, is_delayed


def test_compute_delay_minutes_positive():
    scheduled = datetime(2025, 1, 1, 8, 0, 0)
    actual = scheduled + timedelta(minutes=10)
    delay = compute_delay_minutes(scheduled, actual)
    assert delay == 10.0


def test_compute_delay_minutes_negative():
    scheduled = datetime(2025, 1, 1, 8, 0, 0)
    actual = scheduled - timedelta(minutes=3)
    delay = compute_delay_minutes(scheduled, actual)
    assert delay == -3.0


def test_is_delayed_default_threshold():
    assert is_delayed(6.0) is True
    assert is_delayed(4.0) is False


def test_is_delayed_custom_threshold():
    assert is_delayed(3.0, threshold=2.0) is True
    assert is_delayed(1.0, threshold=2.0) is False
