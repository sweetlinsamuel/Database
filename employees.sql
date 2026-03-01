-- 2)Create a table called employees where each employee must have an employee id, email, and salary. 
-- No two employees should have the same email, and each employee id should be different. 
-- Insert some records and check the result.

CREATE DATABASE organization;
USE organization;

CREATE TABLE employees(
id INT AUTO_INCREMENT PRIMARY KEY,
empid INT,
empname VARCHAR(100),
emailaddress VARCHAR(100),
salary INT
);

SELECT * from employees;

INSERT INTO employees (id, empid , empname, emailaddress, salary)
VALUES
    (1, 123, "Ramesh", "ramesh@gmail.com", 20000),
    (2, 234, "Suresh", "suresh@gmail.com", 22000),
    (3, 345, "Ramya", "ramya@gmail.com", 25000),
    (4, 456, "Rajesh", "rajesh@gmail.com", 23000),
    (5, 567, "divya", "divja@gmail.com", 18000),
    (6, 678, "Priya", "priya@gmail.com", 19000),
    (7, 789, "Mahesh", "Mahesh@gmail.com", 20500);
    
    Truncate TABLE employees;
    
    
    
    



