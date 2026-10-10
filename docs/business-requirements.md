# Business Requirements Document

## 1. Project Background

The business wants to better understand its retail sales performance and customer purchasing behaviour using historical transaction data.

## 2. Business Problem

Management lacks a consolidated view of sales trends, product performance, and customer purchasing patterns. This limits its ability to make informed decisions about product demand, sales planning, and customer retention.

## 3. Business Objectives

* Measure monthly revenue performance.
* Identify the products generating the highest sales value.
* Identify products with high sales volume.
* Understand customer purchasing frequency and spending patterns.
* Quantify cancelled transactions and investigate their characteristics.
* Recommend practical actions based on the findings.

## 4. Key Business Questions

1. How does revenue change month by month?
2. Which products contribute the most to revenue?
3. Which products sell the highest quantities?
4. Which countries contribute the most revenue?
5. How do repeat customers behave?
6. How significant are cancellations in the transaction data?

## 5. Key Performance Indicators (KPIs)

* **Gross sales value:** Sum of quantity multiplied by unit price for eligible sales transactions.
* **Monthly sales value:** Sales value grouped by month.
* **Quantity sold:** Total units sold in eligible sales transactions.
* **Average order value:** Sales value divided by the number of eligible unique orders.
* **Customer count:** Number of distinct identified customers.
* **Cancellation rate:** Cancelled transactions divided by the relevant transaction count, using a clearly defined methodology.

All KPI definitions will be validated against the dataset before final reporting.

## 6. Scope

### In Scope

* Historical retail transaction analysis.
* Data quality checks and cleaning.
* Sales, product, country, and customer analysis.
* Cancellation analysis.
* Business recommendations.

### Out of Scope

* Sales forecasting.
* Profitability analysis without cost data.
* Live sales monitoring.
* Causal claims about why customers behave in certain ways.

## 7. Data Source

UCI Machine Learning Repository — Online Retail Dataset.

Source: https://archive.ics.uci.edu/dataset/352/online+retail

## 8. Intended Audience

Retail management, sales managers, inventory planners, and business stakeholders.

## 9. Expected Outcome

A documented, reproducible analysis that translates historical retail transactions into evidence-based business insights and practical recommendations.
