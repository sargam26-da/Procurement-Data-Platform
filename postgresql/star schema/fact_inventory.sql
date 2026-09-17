CREATE TABLE dw.fact_inventory (
    inventory_fact_key SERIAL PRIMARY KEY,

    inventory_id VARCHAR(50) NOT NULL UNIQUE,

    po_key INTEGER,
    warehouse_key INTEGER NOT NULL,
    snapshot_date_key INTEGER,

    product_id VARCHAR(50),

    opening_stock NUMERIC(18,2),
    stock_in NUMERIC(18,2),
    stock_out NUMERIC(18,2),
    closing_stock NUMERIC(18,2),
    reorder_level NUMERIC(18,2),
    safety_stock NUMERIC(18,2),
    inventory_value_inr NUMERIC(18,2),
    capacity_utilization_percent NUMERIC(5,2),

    FOREIGN KEY (po_key)
        REFERENCES dw.dim_purchase_order(po_key),

    FOREIGN KEY (warehouse_key)
        REFERENCES dw.dim_warehouse(warehouse_key),

    FOREIGN KEY (snapshot_date_key)
        REFERENCES dw.dim_date(date_key)
);