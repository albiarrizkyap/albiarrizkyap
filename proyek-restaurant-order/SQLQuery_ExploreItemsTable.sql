-- EXPLORE THE ITEMS TABLE --
USE restaurant_db

-- View the menu_items table
SELECT *
FROM menu_items;

-- Find the number of items on the menu
SELECT COUNT(*) AS number_of_items
FROM menu_items

-- The least and most expensive items on the menu
SELECT * 
FROM menu_items
ORDER BY price

SELECT *
FROM menu_items
ORDER BY price DESC

-- The number of Italian dishes are on the menu
SELECT COUNT(category) AS number_italian_dishes
FROM menu_items
WHERE category = 'Italian'

-- The least and most expensive Italian dishes on the menu
SELECT *
FROM menu_items
WHERE category = 'Italian'

SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC

-- Number of dishes in each category
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category

-- The average dish price within each category
SELECT category, AVG(price) AS avg_dish_price
FROM menu_items
GROUP BY category