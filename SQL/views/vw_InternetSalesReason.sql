CREATE OR ALTER VIEW vw_InternetSalesReason AS
SELECT
    SalesOrderNumber,
    SalesOrderLineNumber,
    SalesReasonKey
FROM FactInternetSalesReason;
