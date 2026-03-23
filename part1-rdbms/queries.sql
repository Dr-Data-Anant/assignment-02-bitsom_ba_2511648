-- Q1
SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'Mumbai'
GROUP BY c.customer_id, c.name;

-- Q2
SELECT product_id, SUM(quantity) AS total_sold
FROM order_items
GROUP BY product_id
ORDER BY total_sold DESC
LIMIT 3;

-- Q3
SELECT customer_id, COUNT(DISTINCT customer_id)
FROM orders
GROUP BY customer_id;

-- Q4
SELECT * FROM orders
WHERE total_amount > 10000
ORDER BY total_amount DESC;

-- Q5
SELECT p.product_id
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;