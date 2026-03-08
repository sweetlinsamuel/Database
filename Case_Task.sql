-- Task 1:
-- Create a table called Students with the following columns:
-- student_id, student_name, marks

-- Task 2:
-- Insert at least 5 records with different marks.

-- Task 3:
-- Write a query using CASE statement to display the grade based on marks.

-- Condition:

-- marks >= 90 → Grade A
-- marks >= 75 → Grade B
-- marks >= 50 → Grade C
-- marks < 50 → Fail

-- Display the result as grade.



Create Database School_student;
Use School_student;

CREATE TABLE students(
student_id INT PRIMARY KEY,
student_name VARCHAR(100),
marks INT
);

Insert into students Values
(1, "Anitha", 90),
(2, "Balu", 80),
(3, "Chandu", 50),
(4, "Dolly", 75),
(5, "Eden",35);

Select 
    student_id,
    student_name,
    marks,
    CASE
        WHEN marks >= 90 THEN 'Grade A'
        WHEN marks >= 75 THEN 'Grade B'
        WHEN marks >= 50 THEN 'Grade C'
        ELSE 'Fail'
    End as grade
From Students;
