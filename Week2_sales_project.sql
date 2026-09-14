-- CREATE DATABASE sales_project;
-- USE sales_project;

-- SELECT * FROM sales_data;

-- Total orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM sales_data;

-- Top 10 customers
SELECT 
    customer_name,
    SUM(total_price) AS total_spent
FROM sales_data
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;

-- Average Order Value
SELECT 
    AVG(total_price) AS average_order_value
FROM sales_data;

-- Average order value by customer
SELECT 
    customer_name,
    AVG(total_price) AS average_order_value
FROM sales_data
GROUP BY customer_name
ORDER BY average_order_value DESC;