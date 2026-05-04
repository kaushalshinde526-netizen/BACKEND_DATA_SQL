# 🚀 AI Job Tracker (SQL Project)

## 📌 Project Overview

AI Job Tracker हा एक **MySQL-based project** आहे जो job applications track करण्यासाठी design केला आहे.
यामध्ये companies, jobs, skills आणि applications यांचा relational structure वापरून real-world scenario simulate केला आहे.

---

## 🛠️ Tech Stack

* SQL (MySQL)
* Database Design (DDL, DML, DQL, TCL, DCL)

---

## 🧱 Database Structure

### 🔹 Tables:

* **skills** → Skills list (Python, SQL, Testing, GenAI)
* **companies** → Company details (TCS, Infosys, Google)
* **jobs** → Job roles with salary
* **applications** → Job application status

---

## 🔗 Relationships

* One Company → Many Jobs
* One Job → Many Applications

---

## ⚙️ Features Implemented

### ✅ DDL (Database & Tables)

* Database creation
* Table creation with Primary & Foreign Keys

### ✅ DML (Data Manipulation)

* Insert sample data
* Update application status
* Delete rejected applications

### ✅ DQL (Queries)

* Filter jobs by salary
* Find interview status
* Retrieve all data

### ✅ JOINS (🔥 Important)

* Combined data from multiple tables:

```sql
SELECT c.company_name, j.job_role, a.status, a.apply_date
FROM applications a
JOIN jobs j ON a.job_id = j.job_id
JOIN companies c ON j.company_id = c.company_id;
```

### ✅ Aggregate Functions

* Total jobs per company
* Highest salary job
* Total applications count

### ✅ TCL (Transaction Control)

* START TRANSACTION
* COMMIT / ROLLBACK

### ✅ DCL (Access Control)

* Create user
* Grant & Revoke permissions

---

## 📊 Sample Insights

* Identify high-paying jobs 💰
* Track application progress 📈
* Analyze company-wise job availability 🏢

---

## 🎯 Learning Outcomes

* Strong understanding of **SQL fundamentals**
* Hands-on experience with **Joins & Relationships**
* Practical use of **CRUD operations**
* Real-world database design

---

## 📂 How to Run

1. Open MySQL Workbench
2. Copy & paste SQL script
3. Execute step-by-step
4. Run SELECT queries to view results

---

## 👨‍💻 Author

**Kaushal Shinde**

---

## ⭐ Future Improvements

* Add frontend (React / Angular)
* Integrate backend (Flask / Spring Boot)
* Add authentication system
* Build dashboard UI

---

## 🔥 Project Status

✅ Completed (Basic Version)
🚀 Ready for Enhancement
