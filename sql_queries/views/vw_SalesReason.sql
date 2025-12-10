CREATE OR ALTER VIEW vw_SalesReason AS
SELECT
    SalesReasonKey,
    SalesReasonName,
    SalesReasonReasonType as SalesReasonType
FROM DimSalesReason;
