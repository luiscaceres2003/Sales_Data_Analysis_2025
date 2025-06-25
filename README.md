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
  - [Testing](#Testing)


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
- Heatmap: Display sales by day, week, or month
- Treemap: Exhibit category sales distribution

Global filters can also be included near the top of the dashboard to help ease the display of information as well. The filters could include:
-  Date Range
-  Genger
-  Age Group
-  Category

## Dashboard Draft
The following draft gives us an idea into what our final dashboard will look like after the data has been properly processed and analyzed. Each data visual best represents an answer to each question.

![image](https://github.com/user-attachments/assets/24942b31-f8de-4294-9a26-eeda69e7a5dc)

# Development
### Pseudocode
Here is our general step-by-step approach to creating and finding a solution for our dilemma.
1. Acquire the dataset from Kaggle
2. Explore/Prepare the data in Excel
3. Import data into SQL Server
4. Clean/Test data in SQL
5. Build and Visualize data in Power BI
6. Generate insights and document findings
7. Publish the data to Github

### Data Exploration
Here is a quick overview of the dataset:
- Rows: 30,000
- Columns: 9
  - *Key Columns*
    - Year, Month: Time-Based columns
    - Supplier: Company selling the product
    - Item Code, Item Description, Item Type: Product Identification
    - Retail Sales, Warehouse Sales: Sales Metrics
- Missing Values:
  - Supplier: 33 missing values
  - Retail Sales: 1 missing value

### Data Cleaning
We need to clean and refine our dataset so that it is structured and ready for analysis. We need to consider the following:
- What columns are relevant and should be kept
- What columns are unnecessary for the project
- No column should contain any null or missing values

How can we achieve these steps?
- Select only necessary columns, therefore removing any unnecessary columns in the process
- Drop any missing values in the *Supplier* column
- Fill the missing value in the *Retail Sales* column with a 0, representing no sales

After we have cleaned our dataset, we are left with:
- 29,967 Rows
- 8 Columns

Here is representation of the expected schema for the clean data:
| Column Name | Data Type | Nullable |
| --- | --- | --- |
| YEAR | INT | NO |
| MONTH | INT | NO |
| SUPPLIER | VARCHAR(50) | NO |
| ITEM_CODE | INT | NO |
| ITEM_DESCRIPTION | VARCHAR(MAX) | NO |
| ITEM_TYPE | VARCHAR(50) | NO |
| RETAIL_SALES | FLOAT | NO |
| WAREHOUSE_SALES | FLOAT | NO |

```sql
/*
- Create a view to store the transformed data
- Select all required columns
*/

CREATE VIEW CleanSeasonalSales AS
SELECT *
FROM [dbo].[Retail and Wharehouse Sales]
```
## Testing
In this section, we are going to conduct data tests and checks to try and help us gain a better understanding of the dataset so that we may be able to find our solutions stated in the Overview section.

### *How do sales fluctaute seasonally?*
### *Which products drive the most revenue and units sold?*
### *Which customer segments are most valuable?*
### *What is the impact of marketing spend?*
