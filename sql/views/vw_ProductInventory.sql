CREATE OR ALTER VIEW vw_FactProductInventory AS
SELECT
    ProductKey,
    DateKey,
    MovementDate,
    UnitCost,
    UnitsIn,
    UnitsOut,
    UnitsBalance
FROM FactProductInventory;
