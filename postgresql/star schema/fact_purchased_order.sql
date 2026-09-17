CREATE TABLE dw.fact_purchase_order (
    po_fact_key SERIAL PRIMARY KEY,

    po_key INTEGER NOT NULL,
    supplier_key INTEGER NOT NULL,
    contract_key INTEGER,
    warehouse_key INTEGER NOT NULL,

    po_date_key INTEGER,
    expected_delivery_key INTEGER,
    actual_receipt_key INTEGER,

    quantity NUMERIC(18,2),
    unit_cost_inr NUMERIC(18,2),
    subtotal_inr NUMERIC(18,2),
    freight_inr NUMERIC(18,2),
    import_duty_percent NUMERIC(5,2),
    import_duty_inr NUMERIC(18,2),
    tax_inr NUMERIC(18,2),
    total_po_value_inr NUMERIC(18,2),
    exchange_rate_to_inr NUMERIC(18,6),
    delay_days INTEGER,

    FOREIGN KEY (po_key)
        REFERENCES dw.dim_purchase_order(po_key),

    FOREIGN KEY (supplier_key)
        REFERENCES dw.dim_supplier(supplier_key),

    FOREIGN KEY (contract_key)
        REFERENCES dw.dim_contract(contract_key),

    FOREIGN KEY (warehouse_key)
        REFERENCES dw.dim_warehouse(warehouse_key),

    FOREIGN KEY (po_date_key)
        REFERENCES dw.dim_date(date_key),

    FOREIGN KEY (expected_delivery_key)
        REFERENCES dw.dim_date(date_key),

    FOREIGN KEY (actual_receipt_key)
        REFERENCES dw.dim_date(date_key)
);