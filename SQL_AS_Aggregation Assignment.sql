CREATE DATABASE IF NOT EXISTS shop;

USE shop;

CREATE TABLE Shopping (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO Shopping (product_id, product_name, price)
VALUES
(1, 'Laptop', 55000.00),
(2, 'Mobile', 25000.00),
(3, 'Headphones', 1500.00),
(4, 'Smart Watch', 5000.00),
(5, 'Tablet', 30000.00);

SELECT * FROM Shopping;

SELECT *
FROM Shopping
WHERE price = (SELECT MAX(price) FROM Shopping);

SELECT *
FROM Shopping
WHERE price = (SELECT MIN(price) FROM Shopping);