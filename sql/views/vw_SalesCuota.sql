CREATE OR ALTER VIEW vw_SalesCuota AS
SELECT
    EmployeeKey,
    DateKey,
    CalendarYear,
    CalendarQuarter,
    SalesAmountQuota
FROM FactSalesQuota;