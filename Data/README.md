# Data

This folder contains the source datasets used for the Financial Forecasting project.

## Files

### financials.csv

Contains daily financial records for 2023.

**Columns:**

- `date`
- `revenue`
- `fixed_cost`
- `variable_cost`
- `total_cost`
- `profit`

The dataset contains 365 daily records covering January 1, 2023 through December 31, 2023.


### budget.csv

Contains monthly budget information for 2023.

**Columns:**

- `month`
- `budget_revenue`
- `budget_cost`

The dataset contains 12 monthly records covering January 2023 through December 2023.

## Data Preparation

The datasets were validated for:

- Missing values
- Duplicate records
- Date coverage
- Financial calculation consistency
- Data types
- Monthly aggregation

SQL validation queries are available in the `/SQL` directory.

