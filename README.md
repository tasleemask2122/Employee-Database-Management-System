-- Delete old tables
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;

--------------------------------------------------
-- Department Table
--------------------------------------------------
CREATE TABLE Department(
    Dept_ID INTEGER PRIMARY KEY,
    Dept_Name TEXT,
    Location TEXT
);

--------------------------------------------------
-- Employee Table
--------------------------------------------------
CREATE TABLE Employee(
    Emp_ID INTEGER PRIMARY KEY,
    Emp_Name TEXT,
    Dept_ID INTEGER,
    Salary INTEGER,
    City TEXT,
    FOREIGN KEY(Dept_ID) REFERENCES Department(Dept_ID)
);

--------------------------------------------------
-- Insert Departments
--------------------------------------------------
INSERT INTO Department VALUES
(1,'IT','Hyderabad'),
(2,'HR','Chennai'),
(3,'Finance','Mumbai');

--------------------------------------------------
-- Insert Employees
--------------------------------------------------
INSERT INTO Employee VALUES
(101,'Ravi',1,50000,'Hyderabad'),
(102,'Priya',2,40000,'Chennai'),
(103,'Rahul',1,60000,'Bangalore'),
(104,'Anjali',3,55000,'Mumbai'),
(105,'Kiran',2,45000,'Hyderabad');

--------------------------------------------------
-- Display Employees with Department Names
--------------------------------------------------
SELECT E.Emp_ID,
       E.Emp_Name,
       D.Dept_Name,
       E.Salary,
       E.City
FROM Employee E
JOIN Department D
ON E.Dept_ID = D.Dept_ID;

--------------------------------------------------
-- Highest Paid Employee
--------------------------------------------------
SELECT Emp_Name, Salary
FROM Employee
WHERE Salary = (
    SELECT MAX(Salary)
    FROM Employee
);

--------------------------------------------------
-- Employees Above Average Salary
--------------------------------------------------
SELECT *
FROM Employee
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employee
);

--------------------------------------------------
-- Department-wise Salary Report
--------------------------------------------------
SELECT D.Dept_Name,
       COUNT(*) AS Employees,
       AVG(E.Salary) AS Avg_Salary
FROM Employee E
JOIN Department D
ON E.Dept_ID = D.Dept_ID
GROUP BY D.Dept_Name;

--------------------------------------------------
-- Top 3 Salaries
--------------------------------------------------
SELECT *
FROM Employee
ORDER BY Salary DESC
LIMIT 3;

--------------------------------------------------
-- Employees Starting with 'R'
--------------------------------------------------
SELECT *
FROM Employee
WHERE Emp_Name LIKE 'R%';

--------------------------------------------------
-- Increase Salary by 10%
--------------------------------------------------
UPDATE Employee
SET Salary = Salary * 1.10;

--------------------------------------------------
-- Display Updated Records
--------------------------------------------------
SELECT * FROM Employee;
