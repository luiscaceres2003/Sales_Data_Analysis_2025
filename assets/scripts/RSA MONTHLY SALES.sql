/*
   1. Select the Date and Total_Amount columns; 
      format the date column as 'year-month' and add up the Total_Amount column; 
      rename them as 'Month' and 'TotalSales'.
   2. Group the results by the Month column.
   3. Order the results by the Month column.
*/

-- 1.
SELECT 
    DATENAME(MONTH, [Date]) AS SalesMonthName,
    SUM([Total_Amount]) AS TotalSales
FROM CleanRetailSales
-- 2.
GROUP BY DATENAME(MONTH, [Date])
-- 3.
ORDER BY SalesMonthName;
