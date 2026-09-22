USE Forecasting;
GO

-- =============================================
-- Financial Forecasting Project
-- Create Tables
-- =============================================

DROP TABLE IF EXISTS dbo.financials;
DROP TABLE IF EXISTS dbo.budget;
GO

CREATE TABLE dbo.financials
(
    [date] DATE NOT NULL,
    revenue DECIMAL(18,2) NOT NULL,
    fixed_cost DECIMAL(18,2) NOT NULL,
    variable_cost DECIMAL(18,2) NOT NULL,
    total_cost DECIMAL(18,2) NOT NULL,
    profit DECIMAL(18,2) NOT NULL
);
GO

CREATE TABLE dbo.budget
(
    [month] DATE NOT NULL,
    budget_revenue DECIMAL(18,2) NOT NULL,
    budget_cost DECIMAL(18,2) NOT NULL
);
GO