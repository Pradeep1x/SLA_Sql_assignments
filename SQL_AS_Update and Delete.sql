CREATE DATABASE BankDB;
USE BankDB;

CREATE TABLE Bank (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    bank_balance DECIMAL(10,2),
    active_status VARCHAR(10)
);

INSERT INTO Bank (cust_id, cust_name, bank_balance, active_status)
VALUES
(101, 'Rahul', 1000.00, 'Active'),
(102, 'jeeva', 300.00, 'Active'),
(103, 'sam', 0.00, 'Active'),
(104, 'bharath', 450.00, 'Active'),
(105, 'pradeep', 2000.00, 'Active');

SET SQL_SAFE_UPDATES = 0;

UPDATE Bank
SET active_status = 'Inactive'
WHERE bank_balance < 500;

DELETE FROM Bank
WHERE bank_balance = 0;

SELECT * FROM Bank;