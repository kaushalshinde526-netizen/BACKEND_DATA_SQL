-- =========================
-- 1. DATABASE (DDL)
-- =========================
CREATE DATABASE IF NOT EXISTS ai_job_tracker;
USE ai_job_tracker;

-- =========================
-- 2. TABLES (DDL)
-- =========================
CREATE TABLE skills(
    skill_id INT PRIMARY KEY AUTO_INCREMENT,
    skill_name VARCHAR(50)
);

CREATE TABLE companies(
    company_id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE jobs(
    job_id INT PRIMARY KEY AUTO_INCREMENT,
    job_role VARCHAR(50),
    company_id INT,
    salary INT,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

CREATE TABLE applications(
    app_id INT PRIMARY KEY AUTO_INCREMENT,
    job_id INT,
    status VARCHAR(50),
    apply_date DATE,
    FOREIGN KEY(job_id) REFERENCES jobs(job_id)
);

-- =========================
-- 3. INSERT DATA (DML)
-- =========================
INSERT INTO skills(skill_name) VALUES 
('python'),('sql'),('testing'),('genai');

INSERT INTO companies (company_name, location) VALUES
('tcs','mumbai'),
('infosys','pune'),
('google','bangalore');

INSERT INTO jobs(job_role,company_id,salary) VALUES
('qa tester',1,30000),
('python developer',2,50000),
('ai engineer',3,100000);

INSERT INTO applications(job_id,status,apply_date) VALUES
(1,'applied','2026-04-15'),
(2,'interview','2026-04-16'),
(3,'rejected','2026-04-17');

-- =========================
-- 4. BASIC QUERIES (DQL)
-- =========================

-- सर्व data पाहण्यासाठी
SELECT * FROM skills;
SELECT * FROM companies;
SELECT * FROM jobs;
SELECT * FROM applications;

-- salary > 40000 jobs
SELECT * FROM jobs
WHERE salary > 40000;

-- interview status
SELECT * FROM applications
WHERE status = 'interview';

-- =========================
-- 5. JOIN (IMPORTANT 🔥)
-- =========================

-- company + job + application status
SELECT c.company_name, j.job_role, a.status, a.apply_date
FROM applications a
JOIN jobs j ON a.job_id = j.job_id
JOIN companies c ON j.company_id = c.company_id;

-- =========================
-- 6. AGGREGATE FUNCTIONS
-- =========================

-- total jobs per company
SELECT company_id, COUNT(*) AS total_jobs
FROM jobs
GROUP BY company_id;

-- highest salary job
SELECT * FROM jobs
ORDER BY salary DESC
LIMIT 1;

-- total applications
SELECT COUNT(*) AS total_applications
FROM applications;

-- =========================
-- 7. UPDATE (DML)
-- =========================

UPDATE applications
SET status = 'selected'
WHERE job_id = 2;

-- =========================
-- 8. DELETE (DML)
-- =========================

DELETE FROM applications
WHERE status = 'rejected';

-- =========================
-- 9. TCL (TRANSACTION)
-- =========================

START TRANSACTION;

UPDATE jobs
SET salary = salary + 10000;

-- ROLLBACK; -- undo changes
-- COMMIT;   -- save changes

-- =========================
-- 10. DCL (ACCESS CONTROL)
-- =========================

CREATE USER 'kaushal'@'localhost' IDENTIFIED BY '1234';

GRANT SELECT, INSERT ON ai_job_tracker.* TO 'kaushal'@'localhost';

REVOKE INSERT ON ai_job_tracker.* FROM 'kaushal'@'localhost';