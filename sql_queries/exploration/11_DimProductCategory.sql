-- View Columns
SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimProductCategory';


-- Top 10
SELECT TOP 10 * FROM DimProductCategory;

-- Total Rows
SELECT DISTINCT ProductCategoryKey, EnglishProductCategoryName FROM DimProductCategory;