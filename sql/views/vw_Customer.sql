CREATE OR ALTER VIEW vw_Customer AS
SELECT
    CustomerKey AS CustomerID,
    GeographyKey AS GeographyID,
    MaritalStatus,
    Gender,
    YearlyIncome,
    TotalChildren,
    NumberChildrenAtHome,
    EnglishEducation,
    EnglishOccupation,
    HouseOwnerFlag,
    NumberCarsOwned,
    DateFirstPurchase,
    CommuteDistance,


    -- Edad calculada (snapshot 2022)
    DATEDIFF(YEAR, BirthDate, '2022-12-31')
        - CASE 
            WHEN DATEADD(YEAR, DATEDIFF(YEAR, BirthDate, '2022-12-31'), BirthDate) > '2022-12-31' 
              THEN 1 
              ELSE 0 
        END AS Age
    
FROM DimCustomer;   