-- Project 2: Retail Sales & Customer Analysis
-- File: 01_data_quality_checks.sql
-- Purpose: Identify data quality issues before business analysis.
-- Source: UCI Online Retail Dataset

-- 1. Inspect the dataset structure.
-- Expected columns:
-- InvoiceNo, StockCode, Description, Quantity,
-- InvoiceDate, UnitPrice, CustomerID, Country

-- 2. Check the total number of records.
SELECT COUNT(*) AS total_records
FROM online_retail;

-- 3. Check for missing customer identifiers.
SELECT COUNT(*) AS missing_customer_ids
FROM online_retail
WHERE CustomerID IS NULL;

-- 4. Check for missing product descriptions.
SELECT COUNT(*) AS missing_descriptions
FROM online_retail
WHERE Description IS NULL;

-- 5. Investigate negative quantities.
SELECT COUNT(*) AS negative_quantity_records
FROM online_retail
WHERE Quantity < 0;

-- 6. Investigate zero or negative unit prices.
SELECT COUNT(*) AS non_positive_price_records
FROM online_retail
WHERE UnitPrice <= 0;

-- 7. Identify cancellation invoices.
SELECT COUNT(*) AS cancellation_records
FROM online_retail
WHERE InvoiceNo LIKE 'C%';

-- 8. Check for duplicate rows across all source columns.
SELECT
InvoiceNo,
StockCode,
Description,
Quantity,
InvoiceDate,
UnitPrice,
CustomerID,
Country,
COUNT(*) AS duplicate_count
FROM online_retail
GROUP BY
InvoiceNo,
StockCode,
Description,
Quantity,
InvoiceDate,
UnitPrice,
CustomerID,
Country
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;

-- Note:
-- These checks are designed for a SQL table named online_retail.
-- The queries cannot run until the dataset is loaded into a database.
-- No records have been removed or modified.
