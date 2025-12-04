-- View Columns
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimPromotion';


-- Top 10
SELECT TOP 10 * FROM DimPromotion;

-- Total Rows
SELECT DISTINCT PromotionKey, EnglishPromotionCategory, EnglishPromotionType, EnglishPromotionName AS TotalRows FROM DimPromotion;