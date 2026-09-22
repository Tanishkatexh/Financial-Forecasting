WITH Scenarios AS
(
    SELECT CAST(0.00 AS DECIMAL(10,2)) AS cost_increase
    UNION ALL
    SELECT CAST(0.05 AS DECIMAL(10,2))
    UNION ALL
    SELECT CAST(0.10 AS DECIMAL(10,2))
    UNION ALL
    SELECT CAST(0.15 AS DECIMAL(10,2))
    UNION ALL
    SELECT CAST(0.20 AS DECIMAL(10,2))
),

Totals AS
(
    SELECT
        SUM(revenue) AS total_revenue,
        SUM(total_cost) AS total_cost
    FROM dbo.financials
)

SELECT
    s.cost_increase,

    t.total_revenue,

    t.total_cost *
        (1 + s.cost_increase)
        AS adjusted_cost,

    t.total_revenue -
        (
            t.total_cost *
            (1 + s.cost_increase)
        )
        AS adjusted_profit

FROM Scenarios s
CROSS JOIN Totals t

ORDER BY
    s.cost_increase;