SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN [date] IS NULL THEN 1 ELSE 0 END) AS null_dates,
    SUM(CASE WHEN revenue IS NULL THEN 1 ELSE 0 END) AS null_revenue,
    SUM(CASE WHEN fixed_cost IS NULL THEN 1 ELSE 0 END) AS null_fixed_cost,
    SUM(CASE WHEN variable_cost IS NULL THEN 1 ELSE 0 END) AS null_variable_cost,
    SUM(CASE WHEN total_cost IS NULL THEN 1 ELSE 0 END) AS null_total_cost,
    SUM(CASE WHEN profit IS NULL THEN 1 ELSE 0 END) AS null_profit
FROM dbo.financials;

SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN [month] IS NULL THEN 1 ELSE 0 END) AS null_months,
    SUM(CASE WHEN budget_revenue IS NULL THEN 1 ELSE 0 END) AS null_budget_revenue,
    SUM(CASE WHEN budget_cost IS NULL THEN 1 ELSE 0 END) AS null_budget_cost
FROM dbo.budget;

SELECT
    [date],
    COUNT(*) AS record_count
FROM dbo.financials
GROUP BY [date]
HAVING COUNT(*) > 1;

SELECT
    [month],
    COUNT(*) AS record_count
FROM dbo.budget
GROUP BY [month]
HAVING COUNT(*) > 1;

SELECT
    COUNT(*) AS total_records,
    SUM(
        CASE
            WHEN total_cost = fixed_cost + variable_cost
            THEN 0
            ELSE 1
        END
    ) AS total_cost_mismatches,
    SUM(
        CASE
            WHEN profit = revenue - total_cost
            THEN 0
            ELSE 1
        END
    ) AS profit_mismatches
FROM dbo.financials;