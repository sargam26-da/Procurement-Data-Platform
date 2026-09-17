CREATE TABLE dw.fact_invoice (
    invoice_fact_key SERIAL PRIMARY KEY,

    invoice_id VARCHAR(50) NOT NULL UNIQUE,

    po_key INTEGER,
    supplier_key INTEGER,

    invoice_date_key INTEGER,
    receipt_date_key INTEGER,
    due_date_key INTEGER,
    paid_date_key INTEGER,

    invoice_amount_inr NUMERIC(18,2),
    exchange_rate_to_inr NUMERIC(18,6),

    currency VARCHAR(10),
    payment_status VARCHAR(50),
    matching_status VARCHAR(50),
    invoice_approval_status VARCHAR(50),

    FOREIGN KEY (po_key)
        REFERENCES dw.dim_purchase_order(po_key),

    FOREIGN KEY (supplier_key)
        REFERENCES dw.dim_supplier(supplier_key),

    FOREIGN KEY (invoice_date_key)
        REFERENCES dw.dim_date(date_key),

    FOREIGN KEY (receipt_date_key)
        REFERENCES dw.dim_date(date_key),

    FOREIGN KEY (due_date_key)
        REFERENCES dw.dim_date(date_key),

    FOREIGN KEY (paid_date_key)
        REFERENCES dw.dim_date(date_key)
);