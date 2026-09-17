CREATE TABLE dw.dim_warehouse (
    warehouse_key SERIAL PRIMARY KEY,
    warehouse_id VARCHAR(50) NOT NULL UNIQUE,
    warehouse_name VARCHAR(200),
    city VARCHAR(100),
    country VARCHAR(100),
    warehouse_type VARCHAR(100),
    capacity_units NUMERIC,
    storage_condition VARCHAR(100),
    warehouse_status VARCHAR(50)
);