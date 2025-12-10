CREATE OR ALTER VIEW vw_ProductInventory AS
SELECT
    ProductKey,
    DateKey,
    MovementDate,
    UnitCost,
    UnitsIn,
    UnitsOut,
    UnitsBalance
FROM FactProductInventory;
