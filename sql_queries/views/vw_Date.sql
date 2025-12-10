CREATE OR ALTER VIEW vw_DimDate AS
SELECT
    DateKey,
    FullDateAlternateKey AS Date,
    EnglishDayNameOfWeek AS DayName,
    DayNumberOfWeek,
    DayNumberOfMonth,
    DayNumberOfYear,
    EnglishMonthName AS MonthName,
    MonthNumberOfYear AS MonthNumber,
    CalendarQuarter AS Quarter,
    CalendarYear AS Year,
    CalendarSemester AS Semester,

    -- Derivados útiles para Power BI
    FORMAT(FullDateAlternateKey, 'yyyy-MM') AS MonthYear,
    FORMAT(FullDateAlternateKey, 'MMM-yyyy') AS MonthYearLong,
    CASE WHEN DayNumberOfWeek IN (6,7) THEN 1 ELSE 0 END AS IsWeekend

FROM DimDate;
