# Hotel Revenue Analysis

## Objective

**Goal:** Clean and analyze data to determine financial growth and trends in a standard business dataset.

**Business Prompt:** 
Its 2020 and a hotel manager is interested in the current financial standing of their company, they request an exploratory data analysis focused on 3 particular metrics:
1. Determine if hotel revenue is growing by year for each hotel type.
2. Determine if there is a need to increase parking space at hotels.
3. Look for trends in average daily rate and seasonality.


## Process

![image](https://github.com/user-attachments/assets/3b4c99d3-a23c-4856-ab33-1b7c53345de6)

I first downloaded the [Dataset](https://www.kaggle.com/datasets/govindkrishnadas/hotel-revenue/data) through Kaggle, then imported it directly into Microsoft SQL Server via the import wizard.

- Raw Data File: [hotel_revenue_historical_full.xlsx](https://github.com/mlund2k/Hotel-Revenue-Analysis/blob/main/hotel_revenue_historical_full.xlsx)

I then set up a database with the contents of the excel file within SQL Server Management Studio.


A full outlined step by step documentation of the data cleaning process with SQL queries, output, and explanation can be found through [Github](https://github.com/mlund2k/Hotel-Revenue-Analysis/blob/main/Data%20Cleaning.sql)

Part 2 of the analysis takes place within Power BI building a dashboard and performing further data cleaning. This can be viewed in the following links:
- [Power BI Dashboard](https://github.com/mlund2k/Hotel-Revenue-Analysis/blob/main/dashboard1.pdf) (pdf format)
- [Power BI Project File](https://github.com/mlund2k/Hotel-Revenue-Analysis/blob/main/dashboard.pbix) This requires Power BI Desktop to run, alternatively check out the non-interactive preview above.
