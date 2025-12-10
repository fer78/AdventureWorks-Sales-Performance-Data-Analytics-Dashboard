-- View Columns
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimProductSubcategory';


-- Top 10
SELECT TOP 10 * FROM DimProductSubcategory;

-- Total Rows
SELECT DISTINCT ProductCategoryKey, ProductSubcategoryKey, EnglishProductSubcategoryName FROM DimProductSubcategory;