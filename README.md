# Task 7: Creating Views in SQL

##  Objective
The goal of this task is to **learn how to create and use SQL Views** to improve data abstraction, security, and reusability in database systems.

---

##  Tools Used
- **DBMS:** MySQL / SQLite
- **Tools:** MySQL Workbench / DB Browser for SQLite
- **Language:** SQL

---

##  Tables Created

### 1. `DEPT` Table
```sql
CREATE TABLE DEPT (
    DEPTNO INT PRIMARY KEY,
    DNAME VARCHAR(50) UNIQUE NOT NULL,
    LOCATION VARCHAR(100)
);
