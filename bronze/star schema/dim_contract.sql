CREATE TABLE dw.dim_contract (
    contract_key SERIAL PRIMARY KEY,
    contract_id VARCHAR(50) NOT NULL UNIQUE,
    supplier_id VARCHAR(50),
    contract_name VARCHAR(200),
    start_date DATE,
    end_date DATE,
    contract_value NUMERIC(18,2),
    currency VARCHAR(10),
    contract_type VARCHAR(100),
    contract_status VARCHAR(50),
    payment_terms_days INTEGER
);