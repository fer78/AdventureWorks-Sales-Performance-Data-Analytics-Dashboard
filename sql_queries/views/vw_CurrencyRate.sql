CREATE OR ALTER VIEW vw_CurrencyRate AS
SELECT
    CurrencyKey,
    DateKey,
    AverageRate,
    EndOfDayRate,
    Date
FROM FactCurrencyRate;
