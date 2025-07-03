#  SQL Task 7 - Creating Views using EMPLOYEE and DEPT Tables

##  Overview

This project is part of the **SQL Developer Internship Program**, focusing on mastering SQL **Views**. It demonstrates how to build a clean schema with employee and department data, insert sample data, create reusable views, and query them efficiently.

You will:
- Create `DEPT` and `EMPLOYEE` tables
- Insert sample records
- Define 3 useful views
- Use `WITH CHECK OPTION` to control view updates
- Practice writing meaningful SQL queries

---

##  Tech Stack

| Tool           | Purpose                          |
|----------------|----------------------------------|
| SQL (MySQL)    | Query language                   |
| DB Browser / MySQL Workbench | SQL execution and management |
| Git + GitHub   | Version control & submission     |

---

##  Files

| File Name     | Description                                      |
|---------------|--------------------------------------------------|
| `task7.sql`   | Main SQL script with table creation, inserts, views, and test queries |
| `README.md`   | Detailed project documentation for GitHub        |

---

##  Schema Structure

###  DEPT Table
Stores department-level info.

```sql
CREATE TABLE DEPT (
    DEPTNO INT PRIMARY KEY,
    DNAME VARCHAR(50) UNIQUE NOT NULL,
    LOCATION VARCHAR(100)
);
