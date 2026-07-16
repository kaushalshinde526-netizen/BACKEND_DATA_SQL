DROP DATABASE IF EXISTS kcv1;

CREATE DATABASE IF NOT EXISTS kcv1;

USE kcv1;

CREATE TABLE IF NOT EXISTS student
(
    name VARCHAR(10),
    tel CHAR(10)
);

DESC student;

ALTER TABLE student
ADD COLUMN marks TINYINT;

DESC student;

ALTER TABLE student
ADD COLUMN address VARCHAR(100),
ADD COLUMN email VARCHAR(100);

DESC student;

ALTER TABLE student
ADD COLUMN rno INT PRIMARY KEY FIRST;

DESC student;

ALTER TABLE student
ADD COLUMN acard CHAR(12) AFTER address;

DESC student;

ALTER TABLE student
MODIFY name VARCHAR(50);

DESC student;

ALTER TABLE student
MODIFY marks TINYINT UNSIGNED;

DESC student;

ALTER TABLE student
MODIFY address VARCHAR(100) DEFAULT 'mumbai';

DESC student;

ALTER TABLE student
MODIFY name VARCHAR(50) NOT NULL;

DESC student;

ALTER TABLE student
CHANGE tel telephone CHAR(10);

DESC student;

ALTER TABLE student
CHANGE acard adhar_card CHAR(12);

DESC student;

ALTER TABLE student
DROP COLUMN adhar_card;

DESC student;
ALTER TABLE student
ADD COLUMN telephone CHAR(10) AFTER adress;