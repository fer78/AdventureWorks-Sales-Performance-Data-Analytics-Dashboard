CREATE OR ALTER VIEW vw_Product AS
SELECT
    p.ProductKey,
    p.EnglishProductName AS ProductName,
    p.ModelName,
    p.ProductLine,
    p.Class,
    p.Style,
    p.Color,
    p.StandardCost,
    p.ListPrice,
    p.DealerPrice,
    p.DaysToManufacture,
    p.FinishedGoodsFlag,
    p.StartDate,
    p.EndDate,
    p.Status,

    -- Subcategory
    sc.ProductSubcategoryKey,
    sc.EnglishProductSubcategoryName AS SubcategoryName,
    
    -- Category
    c.ProductCategoryKey,
    c.EnglishProductCategoryName AS CategoryName

FROM DimProduct p
LEFT JOIN DimProductSubcategory sc
    ON p.ProductSubcategoryKey = sc.ProductSubcategoryKey
LEFT JOIN DimProductCategory c
    ON sc.ProductCategoryKey = c.ProductCategoryKey
WHERE p.FinishedGoodsFlag = 1;

