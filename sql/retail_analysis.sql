-- View full dataset
SELECT * 
FROM retail_sales_data;

-- Monthly Revenue Trend
SELECT 
    strftime('%Y-%m', Order_Date) AS Month,
    SUM(Revenue) AS Total_Revenue
FROM retail_sales_data
GROUP BY Month
ORDER BY Month;

-- Product Category Performance
SELECT 
    Product_Category,
    SUM(Revenue) AS Category_Revenue,
    SUM(Quantity) AS Total_Units_Sold
FROM retail_sales_data
GROUP BY Product_Category
ORDER BY Category_Revenue DESC;

-- Top 10 Products by Revenue
SELECT 
    Product_Name,
    SUM(Revenue) AS Product_Revenue
FROM retail_sales_data
GROUP BY Product_Name
ORDER BY Product_Revenue DESC
LIMIT 10;

-- Customer Purchase Frequency
SELECT 
    Customer_ID,
    COUNT(Order_ID) AS Total_Orders,
    SUM(Revenue) AS Total_Spend
FROM retail_sales_data
GROUP BY Customer_ID
ORDER BY Total_Orders DESC;

-- Average Order Value (AOV)
SELECT 
    AVG(Revenue) AS Average_Order_Value
FROM retail_sales_data;
