/*
   1. Select the Product_Category column;
      select and add up the Total_Amount column; rename it as 'TotalSales'.
   2. Group the results by the Product_Category column.
   3. Order the results by the number of total sales.
*/

-- 1. 
SELECT 
    [Product_Category],
    SUM([Total_Amount]) AS TotalSales
FROM CleanRetailSales
-- 2.
GROUP BY [Product_Category]
-- 3.
ORDER BY TotalSales DESC;