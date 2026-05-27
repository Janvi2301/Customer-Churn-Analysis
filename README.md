# Customer Churn Analysis using Python, SQL & Power BI

## Project Overview
This project focuses on analyzing customer churn behavior in a telecom company using Python, SQL, and Power BI. The objective of the project was to identify churn patterns, customer retention trends, and revenue-impacting factors through data preprocessing, SQL-based business analysis, and interactive dashboard visualization.

The project demonstrates an end-to-end analytics workflow including data cleaning, exploratory data analysis, SQL insight generation, and dashboard development for business decision-making.

---

## Tools & Technologies Used
- Python
- Pandas
- Seaborn
- MySQL
- Power BI
- Google Colab

---

## Project Workflow

### 1. Data Collection
- Imported telecom customer churn dataset
- Loaded dataset into Google Colab for preprocessing

### 2. Data Preprocessing & Quality Checks
- Checked for missing values and duplicate records
- Corrected datatype inconsistencies
- Converted `TotalCharges` column into numeric format
- Handled missing values using median imputation
- Prepared clean dataset for analysis
- Performed Exploratory Data Analysis (EDA)

### 3. SQL-Based Business Analysis
Used MySQL queries to derive business insights such as:
- Overall churn rate
- Revenue loss due to churn
- Contract type vs churn analysis
- High-risk customer segments
- Customer tenure analysis
- Payment method impact on churn
- Gender and senior citizen churn analysis

### 4. Power BI Dashboard
Created an interactive dashboard to visualize:
- Customer KPIs
- Churn trends
- Revenue impact
- Customer segmentation
- Retention insights

---

## Key Business Insights
- Customers with month-to-month contracts showed significantly higher churn rates.
- Customers with higher monthly charges were more likely to leave the service.
- New customers had a higher probability of churn compared to long-term customers.
- Electronic check payment users demonstrated higher churn behavior.
- Long-term contract customers showed stronger retention rates.

---
## Project Structure

```text
customer-churn-analysis/
│
├── data/
│   ├── raw_data.csv
│   └── cleaned_churn_data.csv
│
├── notebooks/
│   └── customer_churn_analysis.ipynb
│
├── sql_queries/
│   └── churn_analysis_queries.sql
│
├── dashboard/
│   ├── churn_dashboard.pbix
│   └── dashboard_screenshot.png
│
├── images/
│   └── dashboard_preview.png
│
├── README.md
└── requirements.txt
