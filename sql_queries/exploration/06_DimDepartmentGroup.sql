-- View Columns
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DimDepartmentGroup';


-- Top 10
SELECT TOP 10 * FROM dbo.DimDepartmentGroup;

-- Total Rows
SELECT DepartmentGroupKey, DepartmentGroupName FROM DimDepartmentGroup;

select ParentDepartmentGroupKey, DepartmentGroupName from DimDepartmentGroup;