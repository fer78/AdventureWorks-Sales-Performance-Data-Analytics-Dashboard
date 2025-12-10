-- View Columns
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimCurrency';


-- Top 10
SELECT TOP 10 * FROM dbo.DimCurrency;

-- Total Rows
SELECT COUNT(*) AS TotalRows FROM dbo.DimCurrency;

select CurrencyAlternateKey, CurrencyName from DimCurrency;