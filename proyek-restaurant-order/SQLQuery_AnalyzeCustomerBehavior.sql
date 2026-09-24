-- ANALYZE CUSTOMER BEHAVIOR --
USE restaurant_db

-- Combine the menu_items and order_details
SELECT *
FROM menu_items

SELECT *
FROM order_details

SELECT *
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id

-- The least and most ordered items; Categories
SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases

SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases DESC

-- Top 5 orders that spent the most money
SELECT TOP 5 order_id, SUM(price) AS total_spend
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC

-- View the details of the highest spend order
SELECT category, COUNT(item_id) AS num_items
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category

-- View the details of the top 5 highest spend orders
SELECT category, COUNT(item_id) AS num_items, SUM(price) AS total_harga
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY category

SELECT order_id, category, COUNT(item_id) AS num_items, SUM(price) AS total_harga
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY order_id, category

-- Insight can we gather from the top 5 highest spend orders
-- Makanan kategori Italian banyak dipesan.
-- Meskipun tidak populer dan harga relatif mahal, kategori ini layak dan perlu untuk dipertahankan.