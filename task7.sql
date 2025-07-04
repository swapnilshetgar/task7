-- Create Department Table
CREATE TABLE DEPT (
    DEPTNO INT PRIMARY KEY,
    DNAME VARCHAR(50) UNIQUE NOT NULL,
    LOCATION VARCHAR(100)
);

-- Create Employee Table
CREATE TABLE EMPLOYEE (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(100) NOT NULL,
    JOB VARCHAR(50),
    MGR INT,
    HIREDATE DATE,
    SALARY DECIMAL(10, 2),
    COMMISSION DECIMAL(10, 2),
    DEPTNO INT,
    FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO)
);

-- Sample Data for DEPT
INSERT INTO DEPT VALUES (10, 'HR', 'Delhi');
INSERT INTO DEPT VALUES (20, 'Finance', 'Mumbai');
INSERT INTO DEPT VALUES (30, 'IT', 'Bangalore');

-- Sample Data for EMPLOYEE
INSERT INTO EMPLOYEE VALUES (101, 'John', 'Manager', NULL, '2022-01-15', 80000, 5000, 10);
INSERT INTO EMPLOYEE VALUES (102, 'Alice', 'Clerk', 101, '2022-03-20', 30000, NULL, 10);
INSERT INTO EMPLOYEE VALUES (103, 'Bob', 'Analyst', 101, '2021-12-01', 60000, 4000, 20);
INSERT INTO EMPLOYEE VALUES (104, 'Ravi', 'Developer', 103, '2023-04-10', 50000, NULL, 30);

-- Create a View showing Employee with Department Info
CREATE VIEW EMP_DEPT_VIEW AS
SELECT 
    E.EMPNO, E.ENAME, E.JOB, E.SALARY, E.DEPTNO,
    D.DNAME, D.LOCATION
FROM EMPLOYEE E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO;

-- Example Query using View
SELECT * FROM EMP_DEPT_VIEW;

-- View with salary > 50000 and job = 'Manager'
CREATE VIEW HIGH_SALARY_MANAGERS AS
SELECT ENAME, SALARY, JOB
FROM EMPLOYEE
WHERE SALARY > 50000 AND JOB = 'Manager';

-- Using the View
SELECT * FROM HIGH_SALARY_MANAGERS;

-- View with WITH CHECK OPTION to restrict updates
CREATE VIEW SECURE_VIEW AS
SELECT * FROM EMPLOYEE WHERE JOB = 'Clerk'
WITH CHECK OPTION;

-- Try updating SECURE_VIEW (will only allow JOB = 'Clerk')
-- UPDATE SECURE_VIEW SET JOB = 'Analyst' WHERE ENAME = 'Alice'; -- will fail
