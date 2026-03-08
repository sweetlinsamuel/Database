-- TASK:
-- Joins  

-- Task 1:
-- Create two tables.
-- Students (student_id, student_name, course_id)
-- Courses (course_id, course_name)
-- Task 2:
-- Insert at least 5 records in both tables.
-- Task 3:
-- Write a query using INNER JOIN to display:
-- student_name and course_name.
-- Task 4:
-- Write a query using LEFT JOIN to display all students and their course.
-- Task 5:
-- Write a query using RIGHT JOIN to display all courses and the students.


Create Database coaching_center;
Use coaching_center;

CREATE TABLE students(
student_id INT AUTO_INCREMENT PRIMARY KEY,
student_name VARCHAR(100),
course_id INT
);

Insert into students Values
(1, "Anitha", 1001),
(2, "Balu", 1002),
(3, "Chandu", 1003),
(4, "Dolly", 1004),
(5, "Eden",1005);

CREATE TABLE courses(
course_id INT,
course_name VARCHAR(50)
); 

Insert into courses Values
(1001, "Python"),
(1002, "Java"),
(1001, "JavaScript"),
(1004, "SQL"),
(1003, "UI/UX");

Drop Table courses;

SELECT Students.student_name, Courses.course_name
FROM Students
INNER JOIN Courses
ON Students.course_id = Courses.course_id;

Select Students.student_name, Courses.course_name
FROM Students
LEFT JOIN Courses
ON Students.course_id = Courses.course_id;

Select Students.student_name, Courses.course_name
FROM Students
RIGHT JOIN Courses
ON Students.course_id = Courses.course_id;
