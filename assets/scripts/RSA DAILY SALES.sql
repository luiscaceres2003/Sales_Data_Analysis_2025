/*
   1. Select the Date and Total_Amount columns; 
      choose the weekday from the date and add up the Total_Amount column; 
      rename them as 'DayOfWeek' and 'TotalSales'.
   2. Group the results by the DayOfWeek column.
*/

-- 1.
SELECT 
    DATENAME(WEEKDAY, [Date]) AS DayOfWeek,
    SUM([Total_Amount]) AS TotalSales
FROM CleanRetailSales
-- 2.
GROUP BY DATENAME(WEEKDAY, [Date]);
