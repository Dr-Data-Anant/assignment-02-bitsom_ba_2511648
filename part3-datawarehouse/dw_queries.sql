-- Q1
SELECT d.month, p.category, SUM(f.revenue)
FROM fact_sales f
JOIN dim_date d ON f.date_id=d.date_id
JOIN dim_product p ON f.product_id=p.product_id
GROUP BY d.month, p.category;

-- Q2
SELECT store_id, SUM(revenue)
FROM fact_sales
GROUP BY store_id
ORDER BY SUM(revenue) DESC
LIMIT 2;

-- Q3
SELECT d.month, SUM(f.revenue)
FROM fact_sales f
JOIN dim_date d ON f.date_id=d.date_id
GROUP BY d.month;