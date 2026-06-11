-- Total Records
SELECT COUNT(*) AS Total_Records
FROM sales;

-- Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM sales;

-- Sales by Category
SELECT Category,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY Category;

-- Profit by Region
SELECT Region,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY Region;

-- Top 10 Products
SELECT "Product Name",
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 10;

-- Average Discount by Category
SELECT Category,
       ROUND(AVG(Discount),2) AS Avg_Discount
FROM sales
GROUP BY Category;

-- Top 5 States by Sales
SELECT State,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 5;

-- Sales by Ship Mode
SELECT "Ship Mode",
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY "Ship Mode"
ORDER BY Total_Sales DESC;