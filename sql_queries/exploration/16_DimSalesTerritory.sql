-- View Columns
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimSalesTerritory';

-- Top 10
SELECT TOP 10 * FROM DimSalesTerritory;

-- Total Rows
SELECT DISTINCT SalesTerritoryKey,	SalesTerritoryGroup,	SalesTerritoryRegion,	SalesTerritoryCountry FROM DimSalesTerritory;