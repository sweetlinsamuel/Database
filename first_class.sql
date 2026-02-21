show databases;

CREATE DATABASE amazon_demo;
USE Amazon_demo;

CREATE TABLE products(
id INT AUTO_INCREMENT PRIMARY KEY,
productname VARCHAR(100),
price INT,
stock INT
);

SHOW TABLES; 

DESC products;

INSERT INTO products(productname, price, stock) VALUES("iphone", 80000, 60);
INSERT INTO products(productname, price, stock) VALUES("samsung", 60000, 80);
INSERT INTO products(productname, price, stock) VALUES("Watch", 8000, 50);
INSERT INTO products(productname, price, stock) VALUES("Laptop", 90000, 60);
INSERT INTO products(productname, price, stock) VALUES("Books", 200, 100);
INSERT INTO products(productname, price, stock) VALUES("Pens", 20, 600);
INSERT INTO products(productname, price, stock) VALUES("Mouse", 800, 50);
INSERT INTO products(productname, price, stock) VALUES("Clock", 1000, 30);

SELECT * FROM products;

SELECT * FROM products WHERE price < 1000;

UPDATE products SET price = 70000 where productname = "Watch";
UPDATE products SET price = 70000 where productname = "Watch";




