USE Forecasting;
GO

WITH MonthlyActuals AS
(
    SELECT
        DATEFROMPARTS(YEAR([date]), MONTH([date]), 1) AS month,
        SUM(revenue) AS actual_revenue,
        SUM(total_cost) AS actual_cost,
        SUM(profit) AS actual_profit
    FROM dbo.financials
    GROUP BY
        YEAR([date]),
        MONTH([date])
)

SELECT
    a.month,

    a.actual_revenue,
    b.budget_revenue,

    a.actual_revenue - b.budget_revenue AS revenue_variance,

    CAST(
        100.0 * (a.actual_revenue - b.budget_revenue)
        / NULLIF(b.budget_revenue, 0)
        AS DECIMAL(10,2)
    ) AS revenue_variance_percent,

    a.actual_cost,
    b.budget_cost,

    a.actual_cost - b.budget_cost AS cost_variance,

    a.actual_profit

FROM MonthlyActuals a

INNER JOIN dbo.budget b
    ON a.month = b.month

ORDER BY
    a.month;