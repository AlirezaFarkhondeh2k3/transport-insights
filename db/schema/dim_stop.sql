CREATE TABLE IF NOT EXISTS dim_stop (
    stop_id     VARCHAR(50) PRIMARY KEY,
    stop_name   VARCHAR(255) NOT NULL,
    latitude    NUMERIC(9, 6),
    longitude   NUMERIC(9, 6)
);
