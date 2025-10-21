-- Creating FactSales table (example)
CREATE TABLE dbo.FactSales (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(50),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(18,4),
    CustomerID INT NULL,
    Country VARCHAR(100),
    TotalSales DECIMAL(18,2),
    Type VARCHAR(20)  -- 'Historical' or 'Forecast'
);

--  Monthly sales (year, month)
SELECT
    YEAR(InvoiceDate) AS [Year],
    MONTH(InvoiceDate) AS [Month],
    SUM(TotalSales) AS MonthlySales
FROM dbo.FactSales
WHERE Type = 'Historical'
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY YEAR(InvoiceDate), MONTH(InvoiceDate);

--  Monthly time-series (ISO date month start) aggregated
SELECT
    DATEFROMPARTS(YEAR(InvoiceDate), MONTH(InvoiceDate), 1) AS MonthStart,
    SUM(TotalSales) AS MonthlySales
FROM dbo.FactSales
WHERE Type = 'Historical'
GROUP BY DATEFROMPARTS(YEAR(InvoiceDate), MONTH(InvoiceDate), 1)
ORDER BY MonthStart;

-- Top 10 products by revenue
SELECT TOP 10
    Description,
    SUM(TotalSales) AS Revenue
FROM dbo.FactSales
WHERE Type = 'Historical'
GROUP BY Description
ORDER BY Revenue DESC;

-- Top countries by revenue
SELECT
    Country,
    SUM(TotalSales) AS Revenue
FROM dbo.FactSales
WHERE Type = 'Historical'
GROUP BY Country
ORDER BY Revenue DESC;

