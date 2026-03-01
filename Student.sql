-- 1)Create a table called students where each student must have an id and name. 
-- The id should be different for every student and the name should not be empty. 
-- Insert some records and test whether the table follows these rules.

CREATE DATABASE school;
USE school;

CREATE TABLE students(
id INT AUTO_INCREMENT PRIMARY KEY,
rollnumber INT,
stuname VARCHAR(100),
dateofbirth INT
);

DROP TABLE students;
SHOW DATABASES;

SELECT * from students;

INSERT INTO students VALUES
(1, 5, "ramu", '2000-12-12');

INSERT INTO students VALUES
(2, 18, "sita", 2001-2-24);
INSERT INTO students VALUES
(3, 3, "divya", 2000-4-21);
INSERT INTO students VALUES
(4, 14, "deepak", 2001-6-27);
INSERT INTO students VALUES
(5, 4, "shiva", 2000-8-30);





