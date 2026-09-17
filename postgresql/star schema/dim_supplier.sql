CREATE TABLE dw.dim_supplier (
    supplier_key SERIAL PRIMARY KEY,
    supplier_id VARCHAR(50) NOT NULL UNIQUE,
    supplier_name VARCHAR(200),
    supplier_type VARCHAR(100),
    supplier_country VARCHAR(100),
    supplier_city VARCHAR(100),
    primary_category VARCHAR(100),
    supplier_rating NUMERIC(5,2),
    typical_lead_time_days INTEGER,
    supplier_status VARCHAR(50),
    currency VARCHAR(10)
);