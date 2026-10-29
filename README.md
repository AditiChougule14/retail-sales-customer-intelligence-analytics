# Retail Sales & Customer Intelligence Analytics

> An end-to-end retail analytics portfolio project covering Python/Pandas data preparation, exploratory analysis, SQL business analytics, customer RFM segmentation, discount-profitability analysis, and Power BI reporting.

## Project purpose

Analyze retail transactions to understand sales, profitability, customer value, product performance, regional performance, discount impact, and shipping behavior. The project is designed around business questions rather than visualization alone.

## Tech stack
- Python
- Pandas / NumPy
- Matplotlib
- MySQL / SQL
- Power BI
- Jupyter Notebook

## Dataset
The working dataset contains 10,194 retail transaction rows and 28 fields after feature engineering. The source data is the Sample Superstore dataset included with this working project.

## Workflow
```text
Raw retail data
    ↓
Data understanding & quality checks
    ↓
Python/Pandas cleaning & feature engineering
    ↓
Exploratory Data Analysis
    ↓
MySQL business analysis
    ↓
Customer RFM segmentation
    ↓
Discount & profitability analysis
    ↓
Power BI dashboard
    ↓
Business insights & recommendations
```

## Analysis areas
- Executive KPIs
- Sales and profit trends
- Regional performance
- Category and sub-category performance
- Product profitability
- Customer value
- RFM customer segmentation
- Discount vs profitability
- Shipping performance
- Advanced SQL using CTEs and window functions

## Project structure
```text
retail-sales-customer-intelligence-analytics/
├── data/
│   ├── raw/
│   └── cleaned/
├── notebooks/
│   ├── 01_data_understanding.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_eda.ipynb
│   ├── 04_customer_rfm_analysis.ipynb
│   └── 05_discount_profitability_analysis.ipynb
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_basic_queries.sql
│   ├── 03_aggregation.sql
│   ├── 04_business_analysis.sql
│   ├── 05_advanced_sql.sql
│   └── 06_interview_queries.sql
├── dashboard/
├── images/
├── LEARNING_GUIDE.md
├── SOURCE_ATTRIBUTION.md
├── requirements.txt
└── README.md
```

## Key business questions
1. Which regions and categories drive revenue and profit?
2. Which products generate persistent losses?
3. Which customers contribute the most revenue and profit?
4. Which customers are champions, loyal, recent, occasional, or at risk?
5. How does discount level relate to profit margin?
6. Which shipping patterns should management monitor?

## Power BI
The dashboard folder contains the starting PBIX and preview images. Follow `dashboard/POWER_BI_CUSTOMIZATION_GUIDE.md` to add the RFM and discount analyses and save a personalized dashboard.

## Setup
```bash
pip install -r requirements.txt
jupyter notebook
```

Run the notebooks in order. The SQL scripts are intended for MySQL. Update the local file path in `sql/01_database_setup.sql` before using `LOAD DATA LOCAL INFILE`, or use MySQL Workbench's import wizard.

## Portfolio note
This repository is an adapted working version based on an existing public GitHub project. The source is retained in `SOURCE_ATTRIBUTION.md`. Before publishing a derivative publicly, verify the original license/terms and dataset/dashboard redistribution permissions. The final portfolio version should contain substantial original analysis, dashboard changes, documentation, and business insights.
