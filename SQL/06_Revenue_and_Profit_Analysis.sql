/* =========================================================
   HIGHEST REVENUE MONTH
   ========================================================= */

WITH MonthlyFinancials AS
(
    SELECT
        YEAR([date]) AS year,
        MONTH([date]) AS month_number,
        DATENAME(MONTH, [date]) AS month_name,
        SUM(revenue) AS total_revenue
    FROM dbo.financials
    GROUP BY
        YEAR([date]),
        MONTH([date]),
        DATENAME(MONTH, [date])
)

/* =========================================================
   LOWEST PROFIT MONTH
   ========================================================= */

SELECT TOP 1
    year,
    month_number,
    month_name,
    total_revenue
FROM MonthlyFinancials
ORDER BY total_revenue DESC;

WITH MonthlyFinancials AS
(
    SELECT
        YEAR([date]) AS year,
        MONTH([date]) AS month_number,
        DATENAME(MONTH, [date]) AS month_name,
        SUM(profit) AS total_profit
    FROM dbo.financials
    GROUP BY
        YEAR([date]),
        MONTH([date]),
        DATENAME(MONTH, [date])
)

SELECT TOP 1
    year,
    month_number,
    month_name,
    total_profit
FROM MonthlyFinancials
ORDER BY total_profit ASC;