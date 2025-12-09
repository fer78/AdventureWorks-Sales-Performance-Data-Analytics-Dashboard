CREATE OR ALTER VIEW vw_Account AS
SELECT
    AccountKey as AccountID,
    AccountDescription as AccountName,
    ValueType,
CASE 
    WHEN AccountType IS NULL THEN 'Unknown'
    ELSE AccountType
END AS AccountCategory

FROM DimAccount;