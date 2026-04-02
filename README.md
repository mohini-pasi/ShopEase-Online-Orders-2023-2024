# ShopEase Orders Analysis (2023–2024)

## Project Overview
This project analyzes 1,000 e-commerce orders from ShopEase spanning January 2023 to December 2024. The analysis includes data cleaning, SQL queries, and visualizations to uncover business insights for management.

## GitHub Repository
[https://github.com/mohini-pasi/ShopEase-Online-Orders-2023-2024/tree/main](https://github.com/mohini-pasi/ShopEase-Online-Orders-2023-2024/tree/main)

## Files in This Submission

| File | Description |
|------|-------------|
| `Task 1 — Data Cleaning & Exploration.ipynb` | Jupyter notebook with data cleaning, missing value analysis, and basic statistics |
| `shopease.sql` | MySQL file with all 6 analysis queries |
| `Task 3 — Visualisations.ipynb` | Jupyter notebook with 5 charts (bar, line, grouped bar, donut charts) |
| `Task 4 — Short Written Summary.ipynb` | Executive summary in plain English for non-technical managers |
| `cleaned_shopease_orders_2023_2024.csv` | Cleaned dataset exported from Task 1 |
| `README.md` | This file |

## How to Run the Code

### Python (Jupyter Notebooks) - Task 1 & Task 3

1. **Install required libraries:**
   ```bash
   pip install pandas numpy matplotlib
Open Jupyter Notebook:

bash
jupyter notebook
Run the notebooks:

First run: Task 1 — Data Cleaning & Exploration.ipynb

Then run: Task 3 — Visualisations.ipynb

View: Task 4 — Short Written Summary.ipynb

MySQL - Task 2
Create database and table:

sql
CREATE DATABASE shopease;
USE shopease;
Import the CSV file into MySQL

Run queries from shopease.sql file

Key Findings
Finding	Insight
Most Important Insight	Electronics is the top revenue category
Year-on-Year	Revenue grew in 2024 compared to 2023, especially during holiday months (November-December)
Underperforming Area	East and West regions have the highest cancelled orders (35 each)
Possible Reason	Payment method failures (like COD or Net Banking) or longer delivery times
Recommendation	Investigate cancellations in East and West. Send payment confirmation messages and improve delivery speed
Task 1 Summary - Data Cleaning & Exploration
Total orders: 1,000 (695 Delivered, 153 Returned, 152 Cancelled)

Missing values: delivery_days (152 missing for cancelled orders), return_reason (847 missing for non-returned orders)

Date range: 2023-01-03 to 2024-12-31

Orders per year: 500 orders in 2023, 500 orders in 2024

Average delivery days by region: Central (6.96), East (6.11), North (6.24), South (6.47), West (6.92)

Age group with most orders: 46+ (336 orders)

Task 2 - SQL Queries Included
Top 3 categories by total net revenue

Revenue comparison between 2023 and 2024

Region with highest average order value and region with most cancellations

Most common return reason and category with highest return rate

Most popular payment method (overall and by region)

Top 5 products by total net revenue

Task 3 - Visualizations Created
Chart	Type	What it Shows
1	Bar Chart	Total net revenue by category (both years combined)
2	Line Chart	Monthly revenue trend - 2023 vs 2024 as separate lines
3	Grouped Bar Chart	Order count by status (Delivered/Returned/Cancelled) per region
4	Donut Chart	Payment method share across all orders
5	Donut Chart	Top 5 products revenue share
Task 4 - Written Summary
Electronics is the top revenue category

Revenue grew in 2024, especially during holiday months

East and West regions have highest cancelled orders (35 each) - possibly due to payment issues or delivery delays

Recommendation: Investigate cancellations in East and West, send payment confirmation messages, and offer faster delivery options

Time Spent
Approximately 2 hours

Tools Used
Python 3.9

Pandas, NumPy, Matplotlib

Jupyter Notebook

MySQL

Notes
The cleaned dataset was exported from Task 1 for use in Task 2 (SQL)

All visualizations are embedded in the notebooks

Task 4 summary is written in markdown for easy reading

text

You can now copy this entire content into your `README.md` file. The GitHub link is added right at the top under the project overview. If the link doesn't work, please double-check the URL in your browser and replace it with the correct one.
