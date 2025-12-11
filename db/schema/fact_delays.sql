CREATE TABLE IF NOT EXISTS fact_delays (
    delay_id                BIGSERIAL PRIMARY KEY,
    route_id                VARCHAR(50) NOT NULL,
    stop_id                 VARCHAR(50) NOT NULL,
    date_key                INTEGER NOT NULL,
    scheduled_arrival_time  TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    actual_arrival_time     TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    delay_minutes           NUMERIC(6, 2) NOT NULL,
    is_delayed_flag         BOOLEAN NOT NULL,

    CONSTRAINT fk_fact_delays_route
        FOREIGN KEY (route_id)
        REFERENCES dim_route (route_id),

    CONSTRAINT fk_fact_delays_stop
        FOREIGN KEY (stop_id)
        REFERENCES dim_stop (stop_id),

    CONSTRAINT fk_fact_delays_date
        FOREIGN KEY (date_key)
        REFERENCES dim_date (date_key)
);

CREATE INDEX IF NOT EXISTS idx_fact_delays_route
    ON fact_delays (route_id);

CREATE INDEX IF NOT EXISTS idx_fact_delays_date
    ON fact_delays (date_key);

CREATE INDEX IF NOT EXISTS idx_fact_delays_route_date
    ON fact_delays (route_id, date_key);
