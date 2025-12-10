-- View Columns
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimEmployee';



SELECT DISTINCT status FROM DimEmployee;
SELECT DISTINCT DepartmentName FROM DimEmployee;
SELECT DISTINCT Title FROM DimEmployee;

SELECT status from DimEmployee
where CurrentFlag = 1 and SalesPersonFlag = 1;

