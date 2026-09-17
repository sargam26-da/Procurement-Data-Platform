CREATE TABLE dw.dim_purchase_order (
    po_key SERIAL PRIMARY KEY,
    po_id VARCHAR(50) NOT NULL UNIQUE,
    product_id VARCHAR(50),
    supply_type VARCHAR(100),
    currency VARCHAR(10),
    shipping_mode VARCHAR(100),
    approval_status VARCHAR(50),
    po_status VARCHAR(50)
);