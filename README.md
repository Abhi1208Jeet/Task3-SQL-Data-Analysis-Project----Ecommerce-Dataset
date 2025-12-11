# Task3-SQL-Data-Analysis-Project----Ecommerce-Dataset
## 📌 Overview

This project demonstrates SQL data analysis skills using an Ecommerce
database.\
It includes: - SQL queries for data analysis\
- Joins, subqueries, aggregate functions\
- Created views and index optimization\
- Screenshot-style outputs\
- A generated PDF report

------------------------------------------------------------------------

## 📦 Dataset Structure

The project uses an **SQLite Ecommerce database** with four tables:

### 1. `customers`

  Column    Type
  --------- ---------
  id        INTEGER
  name      TEXT
  country   TEXT

### 2. `products`

  Column   Type
  -------- ---------
  id       INTEGER
  name     TEXT
  price    REAL

### 3. `orders`

  Column        Type
  ------------- ---------
  id            INTEGER
  customer_id   INTEGER
  order_date    TEXT

### 4. `order_items`

  Column       Type
  ------------ ---------
  id           INTEGER
  order_id     INTEGER
  product_id   INTEGER
  qty          INTEGER

------------------------------------------------------------------------

## 🧠 Queries Included

### ✔ Basic Queries

-   Selection using `SELECT`, `WHERE`
-   Sorting using `ORDER BY`
-   Grouping using `GROUP BY`

### ✔ Joins

-   `INNER JOIN` used to combine order + customer + product data

### ✔ Subqueries

-   Identifying orders with value above **average order value**

### ✔ Aggregates

-   `SUM(price * qty)`
-   `AVG(total order amount)`

### ✔ Views

-   `monthly_revenue` view generates **revenue per month**

### ✔ Index Optimization

    CREATE INDEX idx_orders_customer ON orders(customer_id);

------------------------------------------------------------------------

## 📊 Deliverables Generated

### 📁 Files Included:

-   `ecommerce_queries.sql` --- all SQL queries used\
-   Screenshot images:
    -   `total_sales.png`\
    -   `top_products.png`\
    -   `usa_customers.png`\
    -   `orders_above_avg.png`\
    -   `monthly_revenue.png`\
-   `ecommerce_report.pdf` --- formatted PDF report

------------------------------------------------------------------------

## 🚀 How to Run the Project

### 1. Install SQLite

    sudo apt install sqlite3

### 2. Load the database

    sqlite3 ecommerce.db

### 3. Run queries

    .read ecommerce_queries.sql

------------------------------------------------------------------------

## 📝 Purpose of the Project

This task demonstrates: - Practical SQL querying skills\
- Ability to analyze structured data\
- Real-world ecommerce analytics scenarios\
- Generating reports and visual outputs

Perfect for resumes, portfolios, and data analysis coursework.

------------------------------------------------------------------------

## ✔ Author

Generated with assistance from ChatGPT --- SQL + Data Analysis
automation.
