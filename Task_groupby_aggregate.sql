Use amazon_db;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

Desc products;

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'teddy bear', 'Toys', 500.00),
(2, 'SamsungA50', 'Electronics', 25000.00),
(3, 'Dal', 'Groceries', 600.00),
(4, 'Doll', 'Toys', 550.00),
(5, 'Tshirt', 'Fashion', 1000.00),
(6, 'Laptop', 'Electronics', 42000.00),
(7, 'Rice', 'Groceries', 520.00),
(8, 'Shirt', 'Fashion', 580.00),
(9, 'Puzzle', 'Toys', 300.00),
(10,'TV', 'Electronics', 48000.00);

Select * from products;

Select product_name, category, price From products ORDER BY price DESC;

SELECT category, product_name, SUM(price) AS total_price FROM products
GROUP BY category, product_name
HAVING SUM(price) > 20000;

Select min(price) as lowest_price from products;

Select * from products where price = (select max(price) from products);

