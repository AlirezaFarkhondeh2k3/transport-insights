CREATE TABLE IF NOT EXISTS dim_date (
    date_key    INTEGER PRIMARY KEY,    -- e.g. 20250101
    date        DATE NOT NULL,
    day_of_week VARCHAR(10) NOT NULL,   -- Monday, Tuesday, ...
    is_weekend  BOOLEAN NOT NULL,
    month       INTEGER NOT NULL,
    year        INTEGER NOT NULL
);
