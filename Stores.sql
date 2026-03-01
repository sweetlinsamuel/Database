-- 4)Create a table called products where each product has a product id, product name, and price. 
-- Each product should have a different product id and the price should always be greater than zero.
-- Insert records and test the conditions.


CREATE DATABASE Store;
USE Store;

CREATE TABLE products(
productid INT PRIMARY KEY,
productname VARCHAR(50),
price INT NOT NULL,
CHECK (price > 0)
);

DROP TABLE products;

INSERT INTO products (productid , productname, price)
VALUES
     (01, "Mobile", "15000"),
     (02, "Laptop", "50000"),
     (03, "Mouse", "500"),
     (04, "Headphone", "1500"),
     (05, "Charger", "5000");
     
SELECT * from products;

INSERT INTO products VALUES (07, "Monitor", 0);


-- Got erroe as "19:14:39	INSERT INTO products VALUES (07, "Monitor", 0)	Error Code: 3819.
-- Check constraint 'products_chk_1' is violated.	0.015 sec
"