-- Q1: Customers
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

-- Q2: Products
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price INT
);

-- Q3: Orders
CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    order_date DATE,
    total_amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Q4: Order Items
CREATE TABLE order_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Sample Inserts (minimum 5 rows)
INSERT INTO customers VALUES 
('C1','Anant','Mumbai'),
('C2','Rahul','Delhi'),
('C3','Priya','Bangalore'),
('C4','Neha','Mumbai'),
('C5','Amit','Pune');

INSERT INTO products VALUES
('P1','Laptop','Electronics',50000),
('P2','Shirt','Clothing',2000),
('P3','Rice','Grocery',1000);

INSERT INTO orders VALUES
('O1','C1','2023-01-01',52000),
('O2','C2','2023-02-01',2000),
('O3','C3','2023-03-01',1000),
('O4','C1','2023-04-01',50000),
('O5','C4','2023-05-01',2000);

INSERT INTO order_items (order_id, product_id, quantity) VALUES
('O1','P1',1),
('O2','P2',1),
('O3','P3',1),
('O4','P1',1),
('O5','P2',1);