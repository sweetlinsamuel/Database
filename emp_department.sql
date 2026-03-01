-- 5)Create a Department table and an Employee table where each employee belongs to a department. 
-- A department must be created first before assigning it to an employee. 
-- Insert records and check what happens when a non-existing department is assigned to an employee.


USE organization; 

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

Select * from Department;
Select * from Employee;

INSERT INTO Department VALUES (1, 'HR');
INSERT INTO Department VALUES (2, 'IT');
INSERT INTO Department VALUES (3, 'Finance');

INSERT INTO Employee VALUES (101, 'Alice', 1);
INSERT INTO Employee VALUES (102, 'Bob', 2);
INSERT INTO Employee VALUES (103, 'Charlie', 5);

-- GOT error as "19:08:14	INSERT INTO Employee VALUES (103, 'Charlie', 5)	Error Code: 1452. 
-- Cannot add or update a child row: a foreign key constraint fails 
-- (`organization`.`employee`, CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dept_id`) 
-- REFERENCES `department` (`dept_id`))	0.016 sec"

