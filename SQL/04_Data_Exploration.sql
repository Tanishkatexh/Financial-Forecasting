USE Forecasting;
GO

SELECT
    MIN([date]) AS start_date,
    MAX([date]) AS end_date,
    COUNT(*) AS total_days,
    SUM(revenue) AS total_revenue,
    SUM(total_cost) AS total_cost,
    SUM(profit) AS total_profit
FROM dbo.financials;