-- View Columns
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'FactCallCenter';

-- Top 10
SELECT TOP 10 * FROM dbo.FactCallCenter;

-- Total Rows
SELECT COUNT(*) AS TotalRows FROM FactCallCenter;

SELECT 
    Shift,
    SUM(Calls) AS TotalCalls
FROM dbo.FactCallCenter
GROUP BY Shift
ORDER BY TotalCalls DESC;


