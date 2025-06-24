# Retail Sales Seasonal Trend Analysis: Excel → SQL → Power BI
<img alt="Ex_SQL_PBI Title Card" src="https://github.com/user-attachments/assets/56d5d43c-b40d-45f7-acf9-a69726241460" />

# Table of Contents
- [Overview](#Overview)
- [Data Source](#Data-Source)
- [Phases](#Phases)
  - [Design](#Design)
    - [Dashboard Components](#Dashboard-Components) 
    - [Dashboard Draft](#Dashboard-Draft)
  - [Development](#Development)
    - [Pseudocode](#Pseudocode)
    - [Data Exploration](#Data-Exploration)
    - [Data Cleaning](#Data-Cleaning)


# Overview
### Description:  
Analyze historical retail sales to uncover seasonal trends, top-performing products, and key customer segments to help the sales director & marketing team optimize inventory and promotional decisions.

### Dilemma:
The Sales Director needs clarity on how sales fluctuate seasonally, which products drive peak revenue, and which customer segments contribute most to growth.

### Solution:
Create a dashboard that provides actionable insights into:
- Seasonal sales trends across the year
- Top-performing products by revenue and volume
- High-value customer segments
- The impact of marketing spend on sales performance

This dashboard will enable the Sales and Marketing teams to:
- Plan inventory more effectively by anticipating seasonal demand
- Focus promotions on products and customer segments that drive the most value
- Allocate marketing budgets strategically to maximize return on investment

# Data Source
- **Dataset:** Kaggle "Retail Sales Data with Seasonal Trends & Marketing"  
- **Fields include:**
  - date
  - product
  - ID/name
  - units sold
  - revenue
  - marketing spend
  - customer segment
  - region
- **Link:** [[Retail Sales Data with Seasonal Trends & Marketing](https://www.kaggle.com/datasets/abdullah0a/retail-sales-data-with-seasonal-trends-and-marketing?)]  

## Tools & Technologies
| Tool | Purpose |
| --- | --- |
| Excel | Exploring and familiarizing with dataset |
| SQL Server | Cleaning, testing, and analyzing the data |
| Power BI | Visualizing the data via interactive dashboards |
| GitHub | Hosting the project documentation and version control |

# Phases
- Design
- Development

## Design
### Dashboard Components
What should the dashboard contain in order to help the Sales Director and Marketing team meet their goals?
- Here are some of the questions that the dashboard should be able to answer:
  - How do sales fluctuate seasonally?
  - Which products drive the most revenue and units sold?
  - Which customer segments are most valuable?
  - What is the impact of marketing spend?

- We can use some of the following data visuals to help answer these questions:
  - Line Chart: Clearly shows trends over time, highlights seasonal peaks and troughs.
  - Bar Chart: Quickly identifies top-performing products; bar charts are ideal for ranking.
  - Donut Chart: Provides a clear view of revenue share by segment in a visually digestible way.
  - Scatter Plot: Shows correlation or trend between investment and return, helping assess ROI.

### Dashboard Draft
The following draft gives us an idea into what our final dashboard will look like after the data has been properly processed and analyzed. Each data visual best represents an answer to each question.
![image](https://github.com/user-attachments/assets/b5f3599d-0625-4186-9b94-b1ace7551f55)

## Development
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
