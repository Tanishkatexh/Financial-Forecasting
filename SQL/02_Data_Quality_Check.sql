USE Forecasting;
GO

-- Row counts
SELECT 
    'financials' AS table_name,
    COUNT(*) AS row_count
FROM dbo.financials

UNION ALL

SELECT 
    'budget' AS table_name,
    COUNT(*) AS row_count
FROM dbo.budget;