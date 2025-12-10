CREATE OR ALTER VIEW vw_Reseller AS
SELECT
    ResellerKey,
    ResellerName,
    GeographyKey,
    BusinessType,
    ProductLine,
    AnnualSales,
    YearOpened
FROM DimReseller;
