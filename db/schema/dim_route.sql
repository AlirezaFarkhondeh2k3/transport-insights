CREATE TABLE IF NOT EXISTS dim_route (
    route_id        VARCHAR(50) PRIMARY KEY,
    route_name      VARCHAR(255),
    route_short_name VARCHAR(50),
    route_type      VARCHAR(50),        -- bus, tram, etc.
    distance_km     NUMERIC(6, 2)       -- optional
);
