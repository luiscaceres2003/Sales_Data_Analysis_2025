# Retail Sales Seasonal Trend Analysis: Excel → SQL → Power BI
<img alt="Ex_SQL_PBI Title Card" src="https://github.com/user-attachments/assets/56d5d43c-b40d-45f7-acf9-a69726241460" />

# Table of Contents
- [Overview](#Overview)
  - [Description](#Description)
  - [Dilemma](#Dilemma)
  - [Approach](#Approach)
  - [Solution](#Solution)
  - [Data Source](#Data-Source)
  - [Phases](#Phases)
- [Design](#Design)
  - [Dashboard Components](#Dashboard-Components) 
  - [Dashboard Draft](#Dashboard-Draft)
- [Development](#Development)
  - [Pseudocode](#Pseudocode)
  - [Data Exploration](#Data-Exploration)
  - [Data Cleaning](#Data-Cleaning)
- [Visualization](#Visualization)


# Overview
## Description:  
This project explores synthetic retail sales and customer demographic data to uncover key insights into consumer behavior in a simulated dynamic retail environment. The analysis focuses on a variety of measurements including how age and gender influence purchasing decisions, temporal patterns in sales activity, category-level product appeal, and the interplay between demographics and spending habits. Seasonal trends are also examined to assess how customer behavior shifts throughout the year. The findings aim to inform data-driven marketing strategies and inventory planning in retail operations.

## Dilemma:
The sales team and retail strategy directors need help identifying key patterns in customer purchasing behavior to improve decision-making across marketing, inventory, and seasonal planning. They are unsure how factors like age and gender impact spending, which product categories resonate most with different demographics, and how customer preferences shift over time and during seasonal trends. Without clear insights into these dynamics, the team risks inefficient targeting, overstocking or understocking popular items, and missing opportunities to personalize the customer experience effectively.

## Approach:
To support the sales team in uncovering meaningful trends and customer insights, we are implementing a multi-step analytical process using Excel, Microsoft SQL, and Power BI:

- Excel:
We begin by performing initial data cleaning in Excel to handle formatting issues, remove duplicate entries, and standardize column structures. This ensures the dataset is organized and consistent before deeper transformation.

- Microsoft SQL:
Once pre-cleaned, the data is imported into SQL for further processing. Here, we perform joins across relevant tables, calculate metrics such as total spend by demographic group, and prepare the data for time-based trend analysis. SQL enables scalable and precise data transformation to support complex queries.

- Power BI:
The transformed dataset is then brought into Power BI to develop interactive dashboards. These dashboards visualize patterns in customer purchasing behavior, demographic preferences, seasonal trends, and product category performance—enabling the sales team to make data-driven decisions with clarity and speed.

## Solution:
The dashboard should provide the sales team and directors clear, actionable insights into customer behavior and sales trends. It can help them:
- Identify top-performing demographics and product categories
- Track seasonal and time-based sales patterns
- Understand the link between age, gender, and spending habits
- Monitor shifts in customer preferences over time

## Data Source
The dataset can be found on Kaggle using the following link: [[Retail Sales Dataset](https://www.kaggle.com/datasets/mohammadtalib786/retail-sales-dataset)]  

## Phases
- Design
- Development
- Testing
- Analysis

# Design
## Dashboard Components
The dashboard should contain data visuals that can help identify certain trends and insights into customer behavior and sales information. We can break this information down into three key questions:
- How does customer age and gender influence purchasing behavior?
- Are there discernible patterns in sales across different time periods?
- Which product categories hold the highest appeal among customers?

We can use some of the following data visuals to help answer these questions:
- Bar/Pie Chart: Display sales grouped by age groups or genders.
- Line Chart: Give insight into monthly sales trends.
- Heatmap: Display sales by day, week, or month.
- Treemap: Exhibit category sales distribution.

Global filters can also be included near the top of the dashboard to help ease the display of information as well. The filters could include:
-  Date Range
-  Genger
-  Age Group
-  Category

## Dashboard Draft
The following draft gives us an idea into what our final dashboard will look like after the data has been properly processed and analyzed. Each data visual best represents an answer to each question.

![image](https://github.com/user-attachments/assets/24942b31-f8de-4294-9a26-eeda69e7a5dc)

# Development
## Pseudocode
Here is the general step-by-step approach to creating and finding a solution for the dilemma.
1. Acquire the data
    - Download the *Retail Sales Dataset* from Kaggle
2. Prepare the data in Excel
    - Clean and format the data
      - Handle missing values
      - Standardize date, category, and numerical formats
    - Save cleaned data as .csv file
3. Import data into Microsoft SQL Server
    - Create database and relevant tables in Microsoft SQL Server Management Studio
    - Import cleaned data into SQL tables
4. Test and transform data in SQL
    - Run validation queries to test data integrity
    - Perform data transformations as needed
5. Build and Visualize data in Power BI
    - Connect Power BI to SQL server
    - Create reports and dashboards
6. Generate insights and document findings
    - Analyze trends and outliers in visualizations
    - Summarize key findings
7. Publish the data to Github
    - Upload project assets to Github repository
    - Document project in README file

## Data Exploration
Here is a quick overview of the dataset:
- Rows: 1,000
- Columns: 9
- *Key Columns*
  - **Transaction ID**: Acts as a primary key during SQL analysis.
  - **Date**: Identify time-based trends and seasonality.
  - **Gender** & **Age**: Analyze customer demographics and behavior.
  - **Product Category**: Determine which categories are most popular.
  - **Quantity**, **Price per Unit**, **Total Amount**: Essential for sales performance and revenue analysis.
- There are no missing values in the dataset

## Data Cleaning
Cleaning the dataset won't require too much effort, as most of the columns are required for the analysis. In addition, there aren't any missing values in the dataset, so we won't have to fill in any missing data or remove any NULL values. 

The only column that won't be used in the analysis is going to be *Customer ID* column. Therefore we can remove it before importing the data into the Microsoft SQL Server.

Here is a representation of the expected schema for the clean data:
| Column Name | Data Type | Nullable |
| --- | --- | --- |
| TRANSACTION_ID | INT (**PRIMARY KEY**) | NO |
| DATE | DATE | NO |
| GENDER | VARCHAR(50) | NO |
| AGE | INT | NO |
| PRODUCT_CATEGORY | VARCHAR(50) | NO |
| QUANTITY | INT | NO |
| PRICE_PER_UNIT | INT | NO |
| TOTAL_AMOUNT | INT | NO |

After we have cleaned our dataset, we are left with:
- 1,000 Rows
- 8 Columns

Now that we have cleaned our dataset and imported the data into the Microsoft SQL Server, the last thing we can do to check if our data is clean and ready for testing is to create a view of the transformed data.

### SQL Query
```sql
-- We create a view of the transformed data and select all the data from the VIEW to ensure our data is ready for testing.

CREATE VIEW CleanRetailSales AS
SELECT *
FROM [dbo].[Retail Sales Dataset csv]
GO

SELECT *
FROM CleanRetailSales
```
# Testing
We can break down our testing phase into three parts using our three key questions as guidance. We should be able to answer these questions using SQL queries, and then use the information we found to design our Power BI Dashboard.

## *How does customer age and gender influence purchasing behavior?*
### SQL Query
```sql
/*
   1. Select the Gender and Total_Amount columns from the CleanRetailSales VIEW
   2. Add up the Total_Amount rows and rename the new column as TotalSales
   3.Group up the columns by Gender
*/

SELECT 
-- 1.
    Gender,
-- 2.
    SUM([Total_Amount]) AS TotalSales
FROM CleanRetailSales
-- 3.
GROUP BY Gender;
```
### Output
<img alt="image" src="https://github.com/user-attachments/assets/e863168d-d3b8-4c49-b2af-5f585b1de154" />

This output shows how much each gender contributes to total revenue and can be represented in the dashboard using a **pie chart**.

### SQL Query
```sql
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
```
### Output
<img alt="image" src="https://github.com/user-attachments/assets/5a73bb99-af94-47eb-84c7-41967ec62fe3" />

This output compares sales across age groups, broken down by gender and can be represented in the dashboard using a **bar chart**.

## *Are there discernible patterns in sales across different time periods?*
### SQL Squery
```sql
/*
   1. Select the Date and Total_Amount columns; 
      format the date column as 'year-month' and add up the Total_Amount column; 
      rename them as 'Month' and 'TotalSales'.
   2. Group the results by the Month column.
   3. Order the results by the Month column.
*/

-- 1.
SELECT 
    FORMAT([Date], 'yyyy-MM') AS Month,
    SUM([Total_Amount]) AS TotalSales
FROM CleanRetailSales
-- 2.
GROUP BY FORMAT([Date], 'yyyy-MM')
-- 3.
ORDER BY Month;

```
### Output
<img alt="image" src="https://github.com/user-attachments/assets/8b4ae345-7a15-480c-bfdf-ed76e479edaa" />

This output shows the total sales per month across the dataset’s time range and can be represented in the dashboard using a **line chart**.

### SQL Squery
```sql
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

```
### Output
<img alt="image" src="https://github.com/user-attachments/assets/bcba12cd-13ac-44a8-8add-f244509b29b7" />

### SQL Squery
```sql
/*
   1. Select the year from the Date column; rename it as 'SalesYear';
      select the month from the Date column; rename it as 'SalesMonthNumber';
      select the month name from the Date column; rename it as 'SalesMonthName'.
   2. Select and add up the Total_Amount column; rename it as 'TotalSales'.
   3. Group the results by year, month, and month name columns.
   4. Order the results by the SalesYear and SalesMonthNumber columns.
*/

-- 1.
SELECT 
    YEAR([Date]) AS SalesYear,
    MONTH([Date]) AS SalesMonthNumber,
    DATENAME(MONTH, [Date]) AS SalesMonthName,
-- 2.    
    SUM([Total_Amount]) AS TotalSales
FROM CleanRetailSales
-- 3.
GROUP BY 
    YEAR([Date]),
    MONTH([Date]),
    DATENAME(MONTH, [Date])
-- 4.
ORDER BY 
    SalesYear,
    SalesMonthNumber;
```
### Output
<img alt="image" src="https://github.com/user-attachments/assets/9a8c2e0a-6018-4ddb-b8de-9fde3bc6874d" />

These outputs spot sales activity by weekday and visualize seasonality over months and years. Both of these outputs can be displayed using a **heatmap**.
## *Which product categories hold the highest appeal among customers?*
### SQL Squery
```sql
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
```
### Output
<img alt="image" src="https://github.com/user-attachments/assets/914c2ed6-175e-4cd6-9232-a2a822ff85f8" />

This output shows which categories generate the most revenue and can be represented using a **tree map**.

# Visualization
