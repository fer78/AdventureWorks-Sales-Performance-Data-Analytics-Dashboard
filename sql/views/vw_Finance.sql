CREATE OR ALTER VIEW vw_FactFinance AS
SELECT
    FinanceKey,
    DateKey,
    OrganizationKey,
    DepartmentGroupKey,
    ScenarioKey,
    AccountKey,
    Amount,
    Date
FROM FactFinance;
