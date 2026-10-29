/*=========================================================
Retail Sales Analytics
Basic SQL Queries
Database : retail_sales_analytics

Purpose:
Practice fundamental SQL queries before moving to
business-oriented analysis.
=========================================================*/

USE retail_sales_analytics;


/*=========================================================
SECTION 1: VIEW THE DATA
=========================================================*/

/* View first 10 records */

SELECT *
FROM retail_sales
LIMIT 10;


/* Display Sales, Profit and Category */

SELECT
    category,
    sales,
    profit
FROM retail_sales;


/* List all product categories */

SELECT DISTINCT
    category
FROM retail_sales;


/*=========================================================
SECTION 2: BUSINESS QUESTIONS
=========================================================*/

/*---------------------------------------------------------
Business Question:
Which individual orders generated the highest sales?
---------------------------------------------------------*/

SELECT
    order_id,
    customer_name,
    sales
FROM retail_sales
ORDER BY sales DESC
LIMIT 10;


/*---------------------------------------------------------
Business Question:
Which individual orders generated the lowest profit?
---------------------------------------------------------*/

SELECT
    order_id,
    customer_name,
    profit
FROM retail_sales
ORDER BY profit ASC
LIMIT 10;


/*=========================================================
SECTION 3: FILTERING DATA
=========================================================*/

/* Show orders from the Technology category */

SELECT *
FROM retail_sales
WHERE category = 'Technology';


/* Show loss-making orders */

SELECT
    order_id,
    product_name,
    sales,
    profit
FROM retail_sales
WHERE profit < 0;


/* Show orders with high discounts (50% or more) */

SELECT
    order_id,
    discount,
    sales,
    profit
FROM retail_sales
WHERE discount >= 0.5;


/*=========================================================
SECTION 4: AGGREGATE FUNCTIONS
=========================================================*/

/* Total Sales */

SELECT
    ROUND(SUM(sales), 2) AS total_sales
FROM retail_sales;


/* Total Profit */

SELECT
    ROUND(SUM(profit), 2) AS total_profit
FROM retail_sales;


/* Total Number of Orders */

SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM retail_sales;


/* Average Discount */

SELECT
    ROUND(AVG(discount), 2) AS average_discount
FROM retail_sales;


/* Highest Sale */

SELECT
    MAX(sales) AS highest_sale
FROM retail_sales;


/* Lowest Profit */

SELECT
    MIN(profit) AS lowest_profit
FROM retail_sales;