# Financial Forecasting Dashboard

## Project Overview

The Financial Forecasting Dashboard is a Power BI financial analytics project that analyzes daily revenue, costs, profitability, budget performance, and forecasted revenue.

The objective is to transform financial data into actionable business insights using SQL Server and Power BI.

## Business Objectives

- Analyze revenue and cost performance
- Monitor profitability and profit margins
- Compare actual financial performance against budget
- Identify monthly revenue and cost variances
- Analyze rolling revenue trends
- Forecast future revenue
- Evaluate the impact of potential cost increases on profitability
- Improve financial performance visibility

## Tools & Technologies

- SQL Server
- T-SQL
- Power BI
- DAX
- Power Query
- Data Modeling
- Financial Analysis
- Forecasting
- Scenario Analysis
- GitHub

---

## Data Pipeline

Raw Financial Data  
↓  
SQL Tables  
↓  
Data Quality Checks  
↓  
Data Validation  
↓  
Financial Analysis  
↓  
Power BI Data Model  
↓  
Interactive Dashboard

---

## Dashboard

### Financial Overview

![Financial Overview](Screenshots/01_Financial_Overview.png)

### Financial Forecasting

![Financial Forecasting](Screenshots/02_Financial_Forecasting.png)

---

## SQL Analysis

The SQL analysis includes:

- Table creation
- Data quality checks
- Data validation
- Data exploration
- Monthly financial analysis
- Revenue and profit analysis
- Budget vs. actual analysis
- Forecasting analysis
- Cost scenario analysis

The SQL workflow was used to validate, analyze, and prepare the financial data before visualization and forecasting in Power BI.

---

# Key Findings

## Financial Performance

- The dataset contains 365 daily financial records covering January 1, 2023 through December 31, 2023.
- Total recorded revenue was approximately $469.77K.
- Total recorded cost was approximately $271.68K.
- Total recorded profit was approximately $198.10K.
- Overall profitability was approximately 42.2% based on total profit relative to total revenue.

## Revenue Analysis

- Revenue performance varied throughout the year, with noticeable differences between monthly revenue levels.
- Monthly revenue analysis was used to identify periods of higher and lower financial performance.
- Rolling three-month revenue analysis was used to evaluate short-term revenue trends and reduce the impact of individual monthly fluctuations.

## Budget vs. Actual Performance

- Monthly actual revenue was compared against budgeted revenue to identify revenue variances.
- Monthly actual costs were compared against budgeted costs to identify cost variances.
- Revenue variance percentage was calculated to measure the relative difference between actual and budgeted revenue.
- Budget comparisons provide additional context for evaluating financial performance against planned targets.

## Forecasting

- Historical monthly revenue was used to support forward-looking revenue analysis.
- Power BI forecasting was configured with a six-period forecast horizon and a 95% confidence level.
- Rolling revenue analysis and next-month forecasting measures provide additional views of expected future revenue performance.

## Cost Scenario Analysis

- The dashboard includes a cost increase parameter that allows users to evaluate potential changes in operating costs.
- Adjusted cost is calculated by applying the selected cost increase percentage to total cost.
- Adjusted profit is then calculated using total revenue less adjusted cost.
- This allows potential cost increases to be evaluated in relation to overall profitability.

---

# Recommendations

## Revenue Management

- Monitor monthly revenue trends to identify periods of stronger and weaker financial performance.
- Use rolling revenue analysis to identify sustained changes in revenue rather than relying solely on individual monthly results.
- Investigate significant revenue variances against budget to identify the underlying operational or financial drivers.

## Budget & Financial Planning

- Monitor monthly revenue and cost variances against budget to identify areas requiring additional review.
- Investigate recurring negative revenue variances or positive cost variances to determine whether budget assumptions should be reassessed.
- Use historical performance trends when developing future financial targets and planning assumptions.

## Forecasting

- Compare forecasted revenue with actual results as new financial data becomes available.
- Monitor changes in rolling revenue trends to identify potential shifts in future performance.
- Periodically review forecasting assumptions as additional historical data becomes available.

## Cost Management

- Use cost scenario analysis to evaluate the potential impact of increasing operating costs on profitability.
- Monitor cost increases that could materially reduce profit margins.
- Evaluate cost-control opportunities when scenario analysis indicates significant profitability pressure.

---

# Project Structure

```text
Financial-Forecasting/
│
├── README.md
│
├── SQL/
│   ├── 01_Create_Tables.sql
│   ├── 02_Data_Quality_Checks.sql
│   ├── 03_Data_Validation.sql
│   ├── 04_Data_Exploration.sql
│   ├── 05_Monthly_Financial_Analysis.sql
│   ├── 06_Revenue_and_Profit_Analysis.sql
│   ├── 07_Budget_vs_Actual.sql
│   ├── 08_Forecasting_Analysis.sql
│   └── 09_Cost_Scenario_Analysis.sql
│
├── PowerBI/
│   └── Financial_Forecasting.pbix
│
├── Data/
│   ├── financials.csv
│   ├── budget.csv
│   └── README.md
│
├── Documentation/
│   ├── DAX_Measures.md
│   └── Data_Dictionary.xlsx
│
└── Screenshots/
    ├── 01_Financial_Overview.png
    └── 02_Financial_Forecasting.png