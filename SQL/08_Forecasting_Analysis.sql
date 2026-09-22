WITH MonthlyRevenue AS
(
    SELECT
        DATEFROMPARTS(
            YEAR([date]),
            MONTH([date]),
            1
        ) AS month,

        SUM(revenue) AS monthly_revenue

    FROM dbo.financials

    GROUP BY
        YEAR([date]),
        MONTH([date])
)

SELECT
    month,
    monthly_revenue,

    SUM(monthly_revenue) OVER
    (
        ORDER BY month
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS rolling_3_month_revenue

FROM MonthlyRevenue

ORDER BY
    month;