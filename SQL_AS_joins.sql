CREATE DATABASE Shopping;
USE Shopping;

CREATE TABLE Shopping (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);


INSERT INTO Shopping (product_id, product_name, price) VALUES
(101, 'Laptop', 55000.00),
(102, 'Mobile', 25000.00),
(103, 'Headphones', 3000.00),
(104, 'Keyboard', 1500.00),
(105, 'Mouse', 800.00);

CREATE TABLE Orders (
    product_id INT,
    order_status VARCHAR(20),
    shipping_detail VARCHAR(100)
);


INSERT INTO Orders (product_id, order_status, shipping_detail) VALUES
(101, 'Delivered', 'Chennai'),
(102, 'Shipped', 'Bangalore'),
(103, 'Pending', 'Hyderabad'),
(106, 'Delivered', 'Mumbai');  


#INNER JOIN
   
SELECT
    s.product_id,
    s.product_name,
    s.price,
    o.order_status,
    o.shipping_detail
FROM Shopping s
INNER JOIN Orders o
ON s.product_id = o.product_id;


#LEFT JOIN
  
SELECT
    s.product_id,
    s.product_name,
    s.price,
    o.order_status,
    o.shipping_detail
FROM Shopping s
LEFT JOIN Orders o
ON s.product_id = o.product_id;


#RIGHT JOIN

SELECT
    s.product_id,
    s.product_name,
    s.price,
    o.order_status,
    o.shipping_detail
FROM Shopping s
RIGHT JOIN Orders o
ON s.product_id = o.product_id;



#FULL OUTER JOIN for MySQL
   
SELECT
    s.product_id,
    s.product_name,
    s.price,
    o.order_status,
    o.shipping_detail
FROM Shopping s
LEFT JOIN Orders o
ON s.product_id = o.product_id

UNION

SELECT
    s.product_id,
    s.product_name,
    s.price,
    o.order_status,
    o.shipping_detail
FROM Shopping s
RIGHT JOIN Orders o
ON s.product_id = o.product_id;