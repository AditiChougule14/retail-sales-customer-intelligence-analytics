/*
=========================================================
Retail Sales & Customer Intelligence Analytics
MySQL Database Setup
=========================================================

Purpose:
Create the database and retail_sales table.

IMPORTANT:
- Run this setup only when creating the database for the first time.
- The script does NOT delete an existing retail_sales table.
- CSV import is kept separate so existing data is not accidentally
  overwritten or duplicated.
=========================================================
*/

CREATE DATABASE IF NOT EXISTS retail_sales_analytics;

USE retail_sales_analytics;


/*=========================================================
1. CREATE TABLE
=========================================================*/

/*
The table is created only if it does not already exist.
Existing data will NOT be deleted.
*/

CREATE TABLE IF NOT EXISTS retail_sales (
    row_id INT PRIMARY KEY,
    order_id VARCHAR(20),
    order_date VARCHAR(20),
    ship_date VARCHAR(20),
    ship_mode VARCHAR(30),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(30),
    country_region VARCHAR(50),
    city VARCHAR(100),
    state_province VARCHAR(100),
    postal_code VARCHAR(20),
    region VARCHAR(30),
    product_id VARCHAR(30),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(12,4),
    quantity INT,
    discount DECIMAL(6,4),
    profit DECIMAL(12,4),
    order_month VARCHAR(20),
    order_year INT,
    order_day VARCHAR(20),
    shipping_days INT,
    profit_margin DECIMAL(12,6),
    is_loss VARCHAR(5),
    order_month_num INT
);


/*=========================================================
2. CHECK TABLE
=========================================================*/

/* Check whether the table already contains data */

SELECT COUNT(*) AS existing_rows
FROM retail_sales;


/* View sample records */

SELECT *
FROM retail_sales
LIMIT 5;


/*=========================================================
3. CSV IMPORT
=========================================================*/

/*
IMPORTANT:
Run the following LOAD DATA command ONLY if the table is empty.

Do NOT run it again if the table already contains
the 10,194 imported records.
*/

/*
LOAD DATA LOCAL INFILE
'C:/Users/aditi/Downloads/retail-sales-customer-intelligence-analytics-modified/retail-sales-customer-intelligence-analytics/data/cleaned/sample_-_superstore.csv'
INTO TABLE retail_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
*/


/*=========================================================
4. CHECK IMPORTED DATA
=========================================================*/

SELECT COUNT(*) AS total_rows
FROM retail_sales;


/*=========================================================
5. QUALITY CHECKS
=========================================================*/

SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    MIN(ship_date) AS first_ship_date,
    MAX(ship_date) AS last_ship_date
FROM retail_sales;


/* Count unique business entities */

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS unique_orders,
    COUNT(DISTINCT customer_id) AS unique_customers,
    COUNT(DISTINCT product_id) AS unique_products
FROM retail_sales;


/* Check for invalid shipping dates */

SELECT
    COUNT(*) AS invalid_shipping_rows
FROM retail_sales
WHERE DATEDIFF(
    STR_TO_DATE(ship_date, '%m/%d/%Y'),
    STR_TO_DATE(order_date, '%m/%d/%Y')
) < 0;