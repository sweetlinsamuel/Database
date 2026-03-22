-- 2) Create a stored procedure named GetStudentById that returns student details based on student_id.
-- Use the existing Students table.
-- Create a stored procedure that accepts student_id as input parameter.
-- Fetch the student details for the given id.
-- Call the procedure with different student IDs and check the output.

Use school;

DELIMITER //

CREATE PROCEDURE GetStudentById(IN stu_id INT)
BEGIN
    SELECT * 
    FROM StudentsDetails
    WHERE student_id = stu_id;
END //

DELIMITER //

Drop Procedure GetStudentById;

CALL GetStudentById("3");
CALL GetStudentById("7");