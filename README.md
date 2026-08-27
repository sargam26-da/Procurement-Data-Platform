# UC13 – Enterprise Procurement Data Platform

## Project Overview

The Enterprise Procurement Data Platform integrates procurement,
supplier, product, inventory, invoice, contract, and warehouse data
into a centralized analytical platform.

**Purpose: Pentaho ETL → PostgreSQL → Power BI**

## Project Objective

The objective is to integrate enterprise procurement data,
validate and transform it using Pentaho, store it in PostgreSQL,
and provide procurement and supply-chain analytics through Power BI.

## Technologies Used

- Pentaho Data Integration – ETL
- PostgreSQL – Database and Data Warehouse
- Python / Pandas – Data Profiling and Analysis
- SQL – Database and Analytics
- Git / GitHub – Version Control
- Power BI – Dashboard and Visualization

## Datasets

| Dataset | Records | Primary Key |
|----------|--------|-------------|
| Products | 300 | Product_ID |
| Suppliers | 250 | Supplier_ID |
| Warehouses | 10 | Warehouse_ID |
| Contracts | 600 | Contract_ID |
| Procurement | 5,000 | PO_ID |
| Inventory | 5,000 | Inventory_ID |
| Invoices | 5,000 | Invoice_ID |

### Procurement Transactions

Total procurement transactions: **5,000**

- Domestic: 2,500
- International: 2,500

## Data Relationships

### Primary Keys

- Products → Product_ID
- Suppliers → Supplier_ID
- Warehouses → Warehouse_ID
- Contracts → Contract_ID
- Procurement → PO_ID
- Inventory → Inventory_ID
- Invoices → Invoice_ID

### Foreign Keys

- Contracts.Supplier_ID → Suppliers.Supplier_ID
- Procurement.Supplier_ID → Suppliers.Supplier_ID
- Procurement.Product_ID → Products.Product_ID
- Procurement.Warehouse_ID → Warehouses.Warehouse_ID
- Procurement.Contract_ID → Contracts.Contract_ID
- Inventory.PO_ID → Procurement.PO_ID
- Inventory.Product_ID → Products.Product_ID
- Inventory.Warehouse_ID → Warehouses.Warehouse_ID
- Invoices.PO_ID → Procurement.PO_ID
- Invoices.Supplier_ID → Suppliers.Supplier_ID

## Architecture

Source Data
    ↓
Pentaho ETL
    ↓
Bronze / Staging
    ↓
Silver / Cleansed Data
    ↓
Gold / Data Warehouse
    ↓
Data Marts
    ↓
Power BI

### Architecture Layers

**Bronze:** Raw and ingested data

**Silver:** Cleansed and validated data

**Gold:** Business-ready warehouse and analytical data

## PostgreSQL Load Order

1. Products
2. Suppliers
3. Warehouses
4. Contracts
5. Procurement
6. Inventory
7. Invoices

## Sprint 0 – Project Initiation

- Business Requirement Document
- Solution Architecture
- Project Repository
- Dataset Identification
- Sprint Backlog

## Sprint 1 – Data Discovery & Ingestion

### Objective

Build the procurement raw data landing and staging environment.

### Activities

1. Analyze source datasets
2. Prepare Source Inventory
3. Prepare Data Dictionary
4. Prepare source data
5. Create PostgreSQL staging tables
6. Develop Pentaho ETL pipelines
7. Load data into PostgreSQL
8. Implement logging
9. Implement exception handling
10. Validate record counts
11. Commit code to GitHub

### Deliverables

- Source Inventory
- Data Dictionary
- Pentaho ETL Pipelines
- PostgreSQL Staging Database
- Logging
- Exception Handling
- Git Commit History

## Sprint 2 – Data Profiling, Cleansing & Validation

### Planned Activities

- Data profiling
- Missing value analysis
- Duplicate checks
- Data type validation
- Data standardization
- Data cleansing
- Referential integrity checks
- Reconciliation

## Sprint 3 – Data Warehouse & Analytics

### Planned Fact Tables

- Fact Purchase
- Fact Invoice
- Fact Inventory

### Planned Dimensions

- Dim Supplier
- Dim Product
- Dim Date
- Dim Department
- Dim Warehouse

## Power BI KPIs

### Procurement

- Total Procurement Value
- Domestic vs International Spend
- Monthly Spend
- Procurement by Country
- Procurement by Warehouse

### Supplier

- Top Suppliers
- Average Supplier Lead Time
- On-Time Delivery %
- Average Delay

### Inventory

- Inventory Value
- Stockout Count
- Reorder Count
- Overstock Count
- Warehouse Capacity Utilization

### Invoice

- Overdue Invoice %

### Contract

- Contract Value

### Product

- Top Products


## Repository Structure
'''
UC13-Enterprise-Procurement-Data-Platform/
│
├── docs/
│   ├── BRD/
│   │   └── Business_Requirement_Document.docx
│   │
│   ├── architecture/
│   │   ├── solution_architecture.png
│   │   └── architecture_document.md
│   │
│   ├── data_dictionary/
│   │   └── data_dictionary.xlsx
│   │
│   ├── reports/
│   │   ├── data_profiling_report.docx
│   │   ├── data_quality_report.docx
│   │   ├── validation_report.docx
│   │   └── final_project_report.docx
│   │
│   └── presentations/
│       ├── sprint0_presentation.pptx
│       ├── sprint1_presentation.pptx
│       ├── sprint2_presentation.pptx
│       └── sprint3_presentation.pptx
│
├── config/
│   ├── database_config
│   ├── pentaho_config
│   └── project_config
│
├── datasets/
│   ├── procurement/
│   │   ├── purchase_orders.csv
│   │   ├── purchase_requisitions.csv
│   │   └── procurement_transactions.csv
│   │
│   ├── suppliers/
│   │   ├── suppliers.csv
│   │   └── supplier_performance.csv
│   │
│   ├── products/
│   │   └── products.csv
│   │
│   ├── inventory/
│   │   ├── inventory.csv
│   │   └── warehouse.csv
│   │
│   ├── invoices/
│   │   └── invoices.csv
│   │
│   └── contracts/
│       └── contracts.csv
│
├── bronze/
│   ├── ingestion/
│   │   ├── csv/
│   │   ├── excel/
│   │   ├── json/
│   │   ├── xml/
│   │   └── sql/
│   │
│   └── staging/
│       ├── procurement_staging
│       ├── supplier_staging
│       ├── inventory_staging
│       └── invoice_staging
│
├── silver/
│   ├── cleansing/
│   │   ├── supplier_cleaning
│   │   ├── procurement_cleaning
│   │   └── inventory_cleaning
│   │
│   ├── validation/
│   │   ├── data_quality_checks
│   │   ├── duplicate_checks
│   │   ├── missing_value_checks
│   │   └── reconciliation_checks
│   │
│   └── transformations/
│       ├── supplier_transformation
│       ├── procurement_transformation
│       ├── inventory_transformation
│       └── invoice_transformation
│
├── gold/
│   ├── warehouse/
│   │   ├── fact_purchase
│   │   ├── fact_invoice
│   │   ├── fact_inventory
│   │   └── dimensions/
│   │       ├── dim_supplier
│   │       ├── dim_product
│   │       ├── dim_date
│   │       ├── dim_department
│   │       └── dim_warehouse
│   │
│   ├── datamarts/
│   │   ├── procurement_mart
│   │   ├── supplier_mart
│   │   └── inventory_mart
│   │
│   └── analytics/
│       ├── procurement_analytics
│       ├── supplier_analytics
│       └── inventory_analytics
│
├── pentaho/
│   ├── transformations/
│   │   ├── ingestion/
│   │   ├── cleansing/
│   │   ├── validation/
│   │   └── warehouse_loading/
│   │
│   └── jobs/
│       ├── master_job
│       ├── ingestion_job
│       ├── warehouse_job
│       └── validation_job
│
├── python/
│   ├── profiling/
│   │   ├── data_profiling.py
│   │   └── missing_value_analysis.py
│   │
│   ├── cleansing/
│   │   ├── clean_suppliers.py
│   │   ├── clean_procurement.py
│   │   └── clean_inventory.py
│   │
│   └── analysis/
│       └── procurement_analysis.py
│
├── sql/
│   ├── database/
│   │   └── create_database.sql
│   │
│   ├── staging/
│   │   └── create_staging_tables.sql
│   │
│   ├── warehouse/
│   │   ├── create_fact_tables.sql
│   │   └── create_dimension_tables.sql
│   │
│   └── analytics/
│       ├── procurement_queries.sql
│       ├── supplier_queries.sql
│       └── inventory_queries.sql
│
├── metadata/
│   ├── metadata_repository.xlsx
│   ├── table_metadata.xlsx
│   └── business_glossary.md
│
├── lineage/
│   ├── source_to_target_mapping.xlsx
│   ├── data_lineage.md
│   └── lineage_diagram.png
│
├── dashboards/
│   ├── powerbi/
│   │   └── procurement_dashboard.pbix
│   │
│   └── screenshots/
│       └── dashboard_screenshots/
│
├── deployment/
│   ├── database/
│   ├── pentaho/
│   └── deployment_documentation.md
│
├── tests/
│   ├── data_quality/
│   ├── etl/
│   ├── database/
│   └── validation/
│
└── README.md
'''

## Data Quality

The platform will evaluate:

- Completeness
- Accuracy
- Consistency
- Uniqueness
- Validity
- Referential Integrity

## Logging and Exception Handling

Pentaho pipelines will capture:

- Execution status
- Records processed
- Successful records
- Rejected records
- Error information
- Execution date and time

## Final Objective

The final platform will provide a centralized and reliable procurement
data environment supporting procurement, supplier, inventory, invoice,
contract, product, and warehouse analytics.

**End-to-End Flow:**

Source Data → Pentaho ETL → PostgreSQL → Data Warehouse → Power BI
