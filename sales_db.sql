create database sales_db;
use sales_db;
show tables;
select * from sales;

 SELECT Category, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT `Product.Name`, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY `Product.Name`
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT Region, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Region;


SELECT `Ship.Mode`, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY `Ship.Mode`;
