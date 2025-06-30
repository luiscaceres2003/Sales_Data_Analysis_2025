/*
   1. Select the Gender, Age, and Total_Amount columns from CleanRetailSales View.
   2. Use a CASE expression to divide the Age column into age groups for better analysis and rename the column as AgeGroup.
   3. Add up the Total_Amount column and rename it as TotalSales.
   4. Group up the results by Gender and AgeGroup.
*/

SELECT 
-- 1.   
    Gender,
-- 2.    
    CASE 
        WHEN Age < 20 THEN 'Under 20'
        WHEN Age BETWEEN 20 AND 29 THEN '20-29'
        WHEN Age BETWEEN 30 AND 39 THEN '30-39'
        WHEN Age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50+' 
    END AS AgeGroup,
-- 3.    
    SUM([Total_Amount]) AS TotalSales
FROM CleanRetailSales
-- 4.
GROUP BY 
    Gender,
    CASE 
        WHEN Age < 20 THEN 'Under 20'
        WHEN Age BETWEEN 20 AND 29 THEN '20-29'
        WHEN Age BETWEEN 30 AND 39 THEN '30-39'
        WHEN Age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50+' 
    END;