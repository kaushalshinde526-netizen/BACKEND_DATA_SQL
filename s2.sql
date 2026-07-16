DROP DATABASE IF EXISTS kitv1;

CREATE DATABASE IF NOT EXISTS kitv1;

USE kitv1;

CREATE TABLE IF NOT EXISTS emp (
    eid INT PRIMARY KEY,
    name VARCHAR(20)
);

DESC emp;

INSERT INTO emp (eid, name)
VALUES
(1, 'amit'),
(2, 'neha');

SELECT * FROM emp;