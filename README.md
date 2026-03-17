# MySQL SQL Practice Project

This project contains basic SQL exercises created while learning MySQL and database fundamentals.

## Database
ornek1

## Tables

### Customers
Stores customer information such as:
- Customer Name
- Contact Name
- Address
- City
- Postal Code
- Country

### Products
Stores product information such as:
- Product Name
- Supplier ID
- Category ID
- Unit
- Price

## SQL Topics Practiced

The project includes examples of:

- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- ALTER TABLE
- SELECT
- DISTINCT
- WHERE
- ORDER BY
- COUNT
- LIKE
- AND / OR
- NOT
- BETWEEN
- IN
- NULL / NOT NULL filtering
- UPDATE and DELETE operations
- Aggregate functions (SUM, AVG, MIN, MAX)
- GROUP BY analysis
- OrderDetails table for quantity analysis

## Example Queries

Select customers from Mexico:

```sql
SELECT *
FROM customers
WHERE country = 'Mexico';