# 📊 Sales Trend Analysis Using Aggregations

## 🎯 Objective
Analyze monthly sales performance using SQL by grouping data by year and month to calculate total revenue and order volume.

---

## 🗂️ Dataset
**Table Name**: `online_sales`

**Columns**:
- `order_id` (INT) – Unique order identifier
- `order_date` (DATE) – Date of the order
- `amount` (DECIMAL) – Total order amount
- `product_id` (VARCHAR) – Product identifier

---

## 🔧 Tools Used
- SQL (Tested on PostgreSQL, MySQL, and SQLite)
- Any SQL editor or database client

---
  
### ✅ SQL Concepts:
- Using `strftime('%Y', ...)` and `strftime('%m', ...)` to extract year/month from date
- Aggregating data using:
  - `SUM()` for total revenue
  - `COUNT(DISTINCT ...)` for unique orders
- `GROUP BY` and `ORDER BY` for time-series analysis
- Filtering time periods using the `WHERE` clause
---

## 🧪 Sample SQL Query (PostgreSQL)

SELECT 
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_order_volume
FROM 
    online_sales
WHERE 
    order_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;

---
# Contact me
# Babi pepakayala
# Mail hear:-babipepakayala262129@gmail.com

