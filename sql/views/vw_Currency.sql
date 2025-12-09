CREATE OR ALTER VIEW vw_Currency AS
SELECT
    CurrencyKey AS CurrencyID,
    CurrencyAlternateKey AS CurrencyCode,
    UPPER(CurrencyName) AS CurrencyName
FROM DimCurrency;

