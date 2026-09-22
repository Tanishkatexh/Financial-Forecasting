USE Forecasting;
GO

SELECT
    YEAR([date]) AS year,
    MONTH([date]) AS month_number,
    DATENAME(MONTH, [date]) AS month_name,

    SUM(revenue) AS total_revenue,
    SUM(fixed_cost) AS fixed_cost,
    SUM(variable_cost) AS variable_cost,
    SUM(total_cost) AS total_cost,
    SUM(profit) AS total_profit,

    CAST(
        100.0 * SUM(profit) / NULLIF(SUM(revenue), 0)
        AS DECIMAL(10,2)
    ) AS profit_margin_percent

FROM dbo.financials

GROUP BY
    YEAR([date]),
    MONTH([date]),
    DATENAME(MONTH, [date])

ORDER BY
    year,
    month_number;