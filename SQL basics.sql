CREATE DATABASE e_commerce;
USE e_commerce;

CREATE TABLE amazon(
    prod_id INT AUTO_INCREMENT PRIMARY KEY,
    prod_name VARCHAR(50),
    price DECIMAL(10,2),
    qty INT
);

INSERT INTO amazon(prod_name, price, qty)
VALUES
('laptop', 450.50, 9),
('phone', 200.10, 100),
('headset', 23.50, 90);

SELECT * FROM amazon;