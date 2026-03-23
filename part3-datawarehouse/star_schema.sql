CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    month INT,
    year INT
);

CREATE TABLE dim_product (
    product_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(50)
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(50)
);

CREATE TABLE fact_sales (
    id INT PRIMARY KEY,
    date_id INT,
    product_id VARCHAR(10),
    store_id INT,
    revenue INT,
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id)
);