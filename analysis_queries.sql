CREATE DATABASE superstore_sales;
USE superstore_sales;
SHOW TABLES; 
ALTER TABLE samplesuperstore RENAME TO sales;
SELECT * FROM sales LIMIT 5;
DESCRIBE sales;
SHOW COLUMNS FROM sales;
SELECT DATABASE();
SHOW TABLES;
-- 1.Total Sales and Profit
SELECT
 SUM(Sales) AS total_sales,
 SUM(Profit) AS total_profit
FROM sales;

-- 2. Sales and Profit by Region
SELECT
 Region,
 SUM(Sales) AS total_sales,
 SUM(Profit) AS total_profit
FROM sales
GROUP BY Region
ORDER BY total_sales DESC;

-- 3. Sales and Profit by Category
SELECT
 Category,
 SUM(Sales) AS total_sales,
 SUM(Profit) AS total_profit
FROM sales
GROUP BY Category
ORDER BY total_sales DESC;

-- 4. Top 10 Sub-Categories by Sales
SELECT
  `Sub-Category`,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit
FROM sales
GROUP BY `Sub-Category`
ORDER BY total_sales DESC
LIMIT 10;
 
 -- 5. Sales by Segment
 SELECT
  Segment,
  SUM(Sales) AS total_sales
FROM sales
GROUP BY Segment
ORDER BY total_sales DESC;

-- 6. Average Sales per Order Line
SELECT
 AVG(Sales) AS avg_order_line_value
FROM sales;

-- 7. Total Quantity Sold by Category 
SELECT 
 Category,
 SUM(Quantity) AS total_quantity
FROM sales
GROUP BY Category
ORDER BY total_quantity DESC;
 
-- 8. Profit Margin by Category
SELECT 
    Category,
    SUM(Profit) / SUM(Sales) * 100 AS profit_margin_percent
FROM
    sales
GROUP BY Category
ORDER BY profit_margin_percent DESC;
 
-- 9. Discount Analysis by Category
SELECT 
    Category,
    AVG(Discount) AS avg_discount,
    SUM(Profit) / SUM(Sales) * 100 AS profit_margin
FROM sales
GROUP BY Category
ORDER BY avg_discount DESC;

-- 10. Top 10 Cities by Sales
SELECT 
    City,
    State,
    SUM(Sales) AS total_sales
FROM sales
GROUP BY City, State
ORDER BY total_sales DESC
LIMIT 10;