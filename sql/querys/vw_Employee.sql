CREATE OR ALTER VIEW vw_Employee AS
SELECT
    EmployeeKey as EmployeeID,
    ParentEmployeeKey as ManagerID,
    SalesTerritoryKey,
    Title AS JobTitle,
    DepartmentName,
    CurrentFlag,

    DATEDIFF(YEAR, HireDate, '2022-12-31') AS TenureYears

FROM DimEmployee
WHERE SalesPersonFlag = 1;

