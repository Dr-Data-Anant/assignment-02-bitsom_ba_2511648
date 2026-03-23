-- Q1
SELECT customer_id, COUNT(*) 
FROM read_json_auto('datasets/orders.json')
GROUP BY customer_id;

-- Q2
SELECT customer_id, SUM(total_amount) AS total
FROM read_json_auto('datasets/orders.json')
GROUP BY customer_id
ORDER BY total DESC
LIMIT 3;

-- Q3
SELECT *
FROM read_csv_auto('datasets/customers.csv')
WHERE city='Bangalore';

-- Q4
SELECT *
FROM read_csv_auto('datasets/customers.csv') c
JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id=o.customer_id;