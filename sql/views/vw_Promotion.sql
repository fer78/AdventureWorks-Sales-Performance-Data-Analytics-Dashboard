CREATE OR ALTER VIEW vw_Promotion AS
SELECT
    PromotionKey,
    EnglishPromotionName AS PromotionName,
    EnglishPromotionType AS PromotionType,
    EnglishPromotionCategory AS PromotionCategory,
    DiscountPct,
    StartDate,
    EndDate,
    MinQty,
    MaxQty
FROM DimPromotion;
