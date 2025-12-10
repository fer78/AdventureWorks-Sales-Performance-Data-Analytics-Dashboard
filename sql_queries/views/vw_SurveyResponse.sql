CREATE OR ALTER VIEW vw_SurveyResponse AS
SELECT
    SurveyResponseKey,
    DateKey,
    CustomerKey,
    ProductCategoryKey,
    ProductSubcategoryKey
FROM FactSurveyResponse;