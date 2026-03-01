
-- 3)Create a table called courses where each course has a course id, course name, and duration. 
-- Every course id should identify only one course and the course name should not be empty. 
-- Insert records and verify the behavior.

CREATE DATABASE learning;

USE learning;

CREATE TABLE courses(
courseid INT,
coursename VARCHAR(50) NOT NULL,
duration VARCHAR(50)
);

DROP TABLE courses;

INSERT INTO courses (courseid , coursename, duration)
VALUES
     (201, "Python", "3 months"),
     (102, "UI/UX", "2 months"),
     (207, "SQL", "1 month"),
     (107, "JavaScript", "2 months");
     
     
Select * from courses;

INSERT INTO courses VALUES (423 , "", "15 days");
INSERT INTO courses VALUES (423 , ,"15 days");
