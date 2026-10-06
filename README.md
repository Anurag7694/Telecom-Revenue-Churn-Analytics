# Telecom Revenue & Churn Analytics

An end-to-end Data Analytics project focused on telecom customer churn, revenue performance, and revenue leakage analysis using **PostgreSQL, SQL, Excel, Power BI, and DAX**.

## Project Overview

This project analyzes telecom customer data to understand customer churn patterns, revenue performance, and revenue leakage.

The analysis was performed on a synthetic dataset containing **2,500 customer records**. PostgreSQL was used for SQL-based analysis and validation, Excel was used for business analysis, and Power BI with DAX was used to create an interactive two-page dashboard.

**Workflow:** Excel Dataset → PostgreSQL/SQL → Excel Analysis → Power BI → DAX → Business Insights

## Business Objectives

- Analyze customer churn and retention patterns.
- Calculate expected and actual revenue.
- Identify revenue leakage.
- Compare revenue performance across telecom plans.
- Analyze city-wise revenue leakage.
- Understand complaints, network issues, late payments, and churn patterns.
- Identify customers with high revenue leakage.
- Build an interactive dashboard for business decision-making.

## Tools & Technologies

- PostgreSQL
- pgAdmin
- SQL
- Microsoft Excel
- Power BI
- DAX

## Dataset

The project uses a **synthetic telecom customer dataset** containing 2,500 customer records.

Key columns: `customer_id`, `city`, `plan`, `tenure_months`, `monthly_charge`, `discount`, `expected_revenue`, `actual_revenue`, `revenue_gap`, `data_usage_gb`, `call_minutes`, `complaints`, `network_issues`, `late_payment`, and `status`.

## SQL Analysis

PostgreSQL was used for customer, revenue, revenue leakage, and churn analysis.

Important SQL concepts:

- `COUNT()`
- `COUNT(DISTINCT)`
- `SUM()`
- `AVG()`
- `GROUP BY`
- `ORDER BY`
- `WHERE`
- `CASE WHEN`
- `FILTER`
- `CTE`
- `RANK()`
- Aggregate functions

## Excel Analysis

Excel was used for:

- Plan-wise revenue analysis
- Revenue leakage analysis
- City-wise leakage
- Churn analysis
- Complaint analysis
- Network issue analysis
- Late-payment analysis
- Top revenue leakage customers

## Power BI Dashboard

The final dashboard contains two pages.

### Page 1 – Revenue Analysis

- Total Customers
- Active Customers
- Churned Customers
- Churn Rate
- Expected Revenue
- Revenue Leakage
- Expected vs Actual Revenue by Plan
- Revenue Leakage by City
- Customer Status Distribution
- Churn Rate by Plan
- City, Plan, and Status slicers

### Page 2 – Customer Churn Analysis

- Customer Distribution by Complaints
- Churn Rate by Network Issues
- Churn Rate by Late Payment
- Revenue Leakage by Plan
- Top 10 Customers by Revenue Leakage
- Business Insights

## Key KPIs

| KPI | Value |
|---|---:|
| Total Customers | 2,500 |
| Active Customers | 2,154 |
| Churned Customers | 346 |
| Churn Rate | 13.84% |
| Expected Revenue | ₹1,310,925 |
| Revenue Leakage | ₹30,661.99 |

## Business Insights

1. Overall customer churn rate is **13.84%**, with 346 churned customers out of 2,500.
2. Total revenue leakage is approximately **₹30,661.99**.
3. The **Standard plan** has the highest absolute revenue leakage of **₹14,895.92**.
4. **Pune** has the highest city-level revenue leakage at approximately **₹4,422.84** and the highest leakage percentage at **2.80%**.
5. The **Premium plan** has the highest churn rate at **14.42%**.
6. Churn generally increases with the number of complaints in the analyzed data.
7. Customers experiencing more network issues generally show higher churn rates.
8. Customers with late payments have a **25.53% churn rate**, compared with **12.07%** for customers without late payments.
9. The highest individual revenue leakage among the analyzed customers is approximately **₹339.92**.

> **Note:** Complaint levels, network issues, and late payment show associations with churn in this dataset. These results should not be interpreted as proof of causation.

## Business Recommendations

- Investigate revenue leakage in the Standard plan.
- Prioritize revenue assurance analysis in Pune.
- Monitor customers with repeated complaints and network issues.
- Identify customers with late-payment behavior for targeted retention strategies.
- Investigate high-leakage customers individually for possible billing or revenue discrepancies.


## Dashboard Preview

### Revenue Analysis

![Revenue Analysis Dashboard](Screenshots/Revenue_Analysis.png)

### Customer Churn Analysis

![Customer Churn Dashboard](Screenshots/Churn_Analysis.png)

```text
Telecom-Revenue-Churn-Analytics/
│
├── README.md
├── data/
│   └── telecom_customer_revenue.xlsx
├── sql/
│   └── telecom_revenue.sql
├── powerbi/
│   └── Telecom_Revenue_Churn_Analytics.pbix
└── screenshots/
    ├── Revenue_Analysis.png
    └── Churn_Analysis.png
```

## Skills Demonstrated

SQL Data Analysis • PostgreSQL • Data Validation • Excel Business Analysis • Power BI • DAX • KPI Development • Revenue Leakage Analysis • Customer Churn Analysis • Data Visualization • Business Intelligence

## Data Disclaimer

This project uses a **synthetic telecom dataset created for educational and portfolio purposes**. It does not contain confidential or proprietary company data.

## Author

**Anurag Shukla**

B.Tech – Computer Science & Business Systems

**Data Analytics | SQL | Power BI | Excel | Python**
