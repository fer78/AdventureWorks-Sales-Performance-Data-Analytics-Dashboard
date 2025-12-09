CREATE OR ALTER VIEW vw_FactInternetSalesReason AS
SELECT
    SalesOrderNumber,
    SalesOrderLineNumber,
    SalesReasonKey
FROM FactInternetSalesReason;
