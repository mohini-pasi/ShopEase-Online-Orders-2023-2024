CREATE DATABASE shopease;

USE shopease;

SELECT * FROM cleaned_shopease_orders_2023_2024;

-- • Which 3 categories generated the highest total net revenue across both years?
SELECT category, SUM(net_revenue_inr) AS total_revenue 
FROM cleaned_shopease_orders_2023_2024
GROUP BY category
ORDER BY total_revenue DESC
LIMIT 3;

-- • Compare total net revenue 2023 vs 2024 — did the business grow year-on-year?
SELECT year, SUM(net_revenue_inr) AS total_revenue
FROM cleaned_shopease_orders_2023_2024
GROUP BY year
ORDER BY year;

-- • Which region had the highest average order value? Which had the most cancellations?
SELECT region, AVG(net_revenue_inr) AS avg_order_value
FROM cleaned_shopease_orders_2023_2024
GROUP BY region
ORDER BY avg_order_value DESC
LIMIT 1;

-- • What is the most common return reason? Which category has the highest return rate?
SELECT return_reason, COUNT(*) AS total_returns
FROM cleaned_shopease_orders_2023_2024
WHERE order_status = 'Returned'
GROUP BY return_reason
ORDER BY total_returns DESC
LIMIT 1;

-- • Which payment method is most popular, and does it vary by region?
SELECT category,
COUNT(CASE WHEN order_status = 'Returned' THEN 1 END) * 1.0 / COUNT(*) AS return_rate
FROM cleaned_shopease_orders_2023_2024
GROUP BY category
ORDER BY return_rate DESC
LIMIT 1;

-- • Find the top 5 products by total net revenue.
SELECT payment_method, COUNT(*) AS total_orders
FROM cleaned_shopease_orders_2023_2024
GROUP BY payment_method
ORDER BY total_orders DESC
LIMIT 1;