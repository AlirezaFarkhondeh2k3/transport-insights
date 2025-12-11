CREATE TABLE IF NOT EXISTS route_delay_stats (
    route_id             VARCHAR(50) NOT NULL,
    day_of_week          VARCHAR(10) NOT NULL,   -- Monday, Tuesday, ...
    hour_of_day          INTEGER NOT NULL,       -- 0–23
    trips_count          INTEGER NOT NULL,
    delayed_trips_count  INTEGER NOT NULL,
    avg_delay_minutes    NUMERIC(6, 2) NOT NULL,

    CONSTRAINT pk_route_delay_stats
        PRIMARY KEY (route_id, day_of_week, hour_of_day),

    CONSTRAINT fk_route_delay_stats_route
        FOREIGN KEY (route_id)
        REFERENCES dim_route (route_id)
);
