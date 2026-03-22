
-- 1) Create a stored procedure named GetAllStudents to display all records from the Students table.
-- Create a Students table with columns: student_id, student_name, gender.
-- Insert at least 5 records.
-- Create a stored procedure to fetch all student records.
-- Call the procedure and display the output.


Use school;

CREATE TABLE StudentsDetails (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    gender VARCHAR(10)
);

INSERT INTO StudentsDetails (student_id, student_name, gender) VALUES
(1, 'Ammu', 'Female'),
(2, 'Balu', 'Male'),
(3, 'Chandru', 'Male'),
(4, 'Divya', 'Female'),
(5, 'Emmi', 'Female');

Delimiter //
Create Procedure GETStudentsDetails()
BEGIN 
Select * from StudentsDetails;
END //
Delimiter //

CALL GETStudentsDetails();

