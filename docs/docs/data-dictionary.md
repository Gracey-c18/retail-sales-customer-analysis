# Data Dictionary — Online Retail Dataset

## Dataset Overview

**Source:** UCI Machine Learning Repository — Online Retail
**Period:** 1 December 2010 to 9 December 2011
**Format:** Excel
**Grain:** Individual transaction line items.

Each row represents a product line recorded on an invoice, rather than necessarily one complete order.

## Column Definitions

| Column      | Description                             | Data Type        | Business Use                                  |
| ----------- | --------------------------------------- | ---------------- | --------------------------------------------- |
| InvoiceNo   | Invoice or transaction identifier       | Text             | Identify orders and investigate cancellations |
| StockCode   | Product identifier                      | Text             | Group transactions by product                 |
| Description | Product name or description             | Text             | Understand product performance                |
| Quantity    | Number of units in the transaction line | Integer          | Measure sales volume and identify returns     |
| InvoiceDate | Date and time of the transaction        | Date/Time        | Analyse daily and monthly trends              |
| UnitPrice   | Price per unit in pounds sterling       | Decimal          | Calculate transaction line value              |
| CustomerID  | Customer identifier, when available     | Numeric/nullable | Analyse customer purchasing behaviour         |
| Country     | Customer's country                      | Text             | Compare geographic sales performance          |

## Initial Data Quality Risks

The following checks must be performed before analysis:

1. Missing product descriptions.
2. Missing customer identifiers.
3. Duplicate transaction lines.
4. Negative quantities that may indicate returns or adjustments.
5. Invoice numbers beginning with `C`, which commonly indicate cancellations.
6. Zero or negative unit prices.
7. Invalid or inconsistent dates and data types.

These are checks to investigate, not assumptions that every flagged record is erroneous.

## Calculated Fields

| Field          | Calculation                                                      | Purpose                                      |
| -------------- | ---------------------------------------------------------------- | -------------------------------------------- |
| LineValue      | Quantity × UnitPrice                                             | Calculate the value of each transaction line |
| InvoiceMonth   | Year and month extracted from InvoiceDate                        | Analyse monthly performance                  |
| IsCancellation | Flag based on invoice identifier and validated transaction rules | Separate cancellations from sales            |

## Important Notes

* Invoice numbers and stock codes must be treated as identifiers, not ordinary numeric measures.
* Missing CustomerID values limit customer-level analysis.
* Negative quantities should be investigated before deciding how to treat returns.
* Revenue calculations must explicitly define how cancellations, returns, and unusual prices are handled.
* The dataset does not provide the cost information required to calculate profit.

## Status

Documentation prepared. Data quality checks and calculated fields are pending validation against the downloaded source file.
