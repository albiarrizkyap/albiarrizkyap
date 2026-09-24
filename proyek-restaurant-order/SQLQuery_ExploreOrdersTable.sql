-- EXPLORE THE ORDERS TABLE --
USE restaurant_db;

-- View the order_details table
SELECT *
FROM order_details

-- The date range of the table
SELECT MIN(order_date), MAX(order_date)
FROM order_details

-- The number of orders were made within this date range
SELECT COUNT(DISTINCT(order_id))
FROM order_details

-- The number of items were ordered within this date range
SELECT COUNT(*)
FROM order_details

-- The orders had the most number of items
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id 
ORDER BY num_items DESC

-- The number of orders had more than 12 items
SELECT COUNT(*) FROM 
(SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id 
HAVING COUNT(item_id) > 12) AS num_orders