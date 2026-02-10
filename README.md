# Cloud-Based-Sales-Data-Analysis-Pipeline


Project Overview

This project demonstrates a cloud-based data analysis pipeline for a retail dataset (Global Superstore). The workflow includes:

Uploading dataset to AWS S3.

Loading and cleaning the dataset using Pandas.

Inserting cleaned data into a MySQL database.

Performing SQL queries to extract insights.

Visualizing key metrics using Matplotlib.

Dataset

Dataset used: Global Superstore Dataset

File format: CSV

Columns include: Order.ID, Customer.ID, Product.Name, Sales, Profit, Quantity, Category, Sub.Category, Order.Date, etc.

Project Workflow
1. Data Storage (S3)

Original dataset uploaded to AWS S3.

Cleaned dataset uploaded back to S3 after preprocessing.

2. Data Cleaning (Pandas)

Removed duplicate rows and duplicate primary keys (Row.ID).

Trimmed whitespace from string columns.

Truncated long text columns (Product.Name, Customer.Name, Sub.Category).

Converted date columns to proper datetime format.

Replaced missing values with None for MySQL compatibility.

3. Database Integration (MySQL)

Created sales table with appropriate data types.

Inserted cleaned data into MySQL using Python (mysql.connector).

Handled duplicates using INSERT IGNORE or ON DUPLICATE KEY UPDATE.

4. SQL Queries

Key queries to extract insights:

Total Sales by Category

Top 10 Products by Profit

Total Sales per Region

Monthly Sales Trend

Sales by Ship Mode

5. Data Visualization (Matplotlib)

Pie Chart: Sales distribution by Category

Bar Chart: Top 10 Products by Profit

Line Chart: Monthly Sales Trend

Bar Chart: Sales by Region

Pie Chart: Sales by Ship Mode

Python Libraries Used

pandas — data cleaning & manipulation

numpy — numerical operations

matplotlib — visualizations

mysql-connector-python — MySQL database connection

boto3 — AWS S3 integration
