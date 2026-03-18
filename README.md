# 📊 SQL Sales Analysis Project

This repository includes SQL queries and data analysis exercises created while learning MySQL and database fundamentals.

---

## 🚀 Project Overview

In this project, I practiced SQL by working on a sample sales database and performing real-world data operations.

Key focus areas:

* Data manipulation (INSERT, UPDATE, DELETE)
* Data filtering and querying
* Data aggregation and analysis
* Preparing datasets for reporting

---

## 🗄️ Database

**ornek1**

---

## 📁 Tables

### Customers

Stores customer-related information:

* CustomerID
* CustomerName
* ContactName
* Address
* City
* PostalCode
* Country

### Products

Stores product-related information:

* ProductID
* ProductName
* SupplierID
* CategoryID
* Unit
* Price

### OrderDetails

Stores order transaction data:

* OrderDetailID
* OrderID
* ProductID
* Quantity

---

## 🧠 SQL Topics Covered

### 🔹 Core SQL

* CREATE DATABASE / TABLE
* INSERT INTO
* ALTER TABLE
* UPDATE / DELETE
* SELECT / DISTINCT

### 🔹 Filtering & Conditions

* WHERE
* LIKE (pattern matching)
* IN / NOT IN
* BETWEEN
* AND / OR / NOT

### 🔹 Data Analysis

* COUNT()
* SUM()
* AVG()
* MIN() / MAX()
* GROUP BY

### 🔹 String Functions

* CONCAT()

---

## 📊 Example Queries

### Customers from Mexico

```sql
SELECT *
FROM customers
WHERE country = 'Mexico';
```

### Total quantity per order

```sql
SELECT OrderID, SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY OrderID;
```

### Average product price

```sql
SELECT AVG(Price) AS AveragePrice
FROM Products;
```

---

## 🎯 Purpose

The goal of this project is to build a strong SQL foundation and transition into a **Data Analyst role** by applying data querying and analysis techniques.

---

## 🔜 Next Steps

* JOIN queries (multi-table analysis)
* Subqueries
* Advanced filtering techniques
* Power BI dashboard integration

---

## 👨‍💻 Author

**Emre Erol**
