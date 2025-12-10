-- View Columns
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimGeography';


-- Top 10
SELECT TOP 10 * FROM DimGeography;

-- Total Rows
SELECT COUNT(*) AS TotalRows FROM DimGeography;

SELECT DISTINCT CountryRegionCode, EnglishCountryRegionName FROM DimGeography;

SELECT DISTINCT StateProvinceCode, StateProvinceName FROM DimGeography;
