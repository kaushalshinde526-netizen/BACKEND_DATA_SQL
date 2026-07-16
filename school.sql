DROP DATABASE IF EXISTS school_db;

CREATE DATABASE IF NOT EXISTS school_db;

USE school_db;

CREATE TABLE IF NOT EXISTS students
(
    rno INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(20) NOT NULL
);

DESC students;

ALTER TABLE students
ADD COLUMN hobbies SET('sports','music','reading','art');

DESC students;

ALTER TABLE students
ADD COLUMN fees DECIMAL(10,2) AFTER student_name;

DESC students;

ALTER TABLE students
MODIFY student_name VARCHAR(50);

DESC students;

ALTER TABLE students
ADD COLUMN class TINYINT CHECK ((class >= 1) && (class <= 12)),
ADD COLUMN section ENUM('A','B','C');

DESC students;

ALTER TABLE students
CHANGE student_name full_name VARCHAR(50) NOT NULL;

DESC students;

ALTER TABLE students
DROP COLUMN hobbies;

DESC students;
INSERT INTO students (full_name, fees, class, section)
VALUES
('Kaushal', 25000.00, 12, 'A'),
('Amit', 18000.00, 10, 'B'),
('Neha', 22000.00, 11, 'C');

SELECT * FROM students;
