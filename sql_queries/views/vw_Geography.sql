

CREATE OR ALTER VIEW vw_DimGeography AS
SELECT
    GeographyKey,
    City,
    StateProvinceName AS State,
    CountryRegionCode,
    EnglishCountryRegionName AS Country,
    PostalCode,
    SalesTerritoryKey,

    -- Ubicación completa para mapas
    CONCAT(City, ', ', StateProvinceName, ', ', EnglishCountryRegionName) AS FullLocation
FROM DimGeography;
