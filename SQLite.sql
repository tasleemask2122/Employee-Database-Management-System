-- Delete table if it already exists
DROP TABLE IF EXISTS Employee;

-- Create Employee Table
CREATE TABLE Employee (
    Emp_ID INTEGER PRIMARY KEY,
    Emp_Name TEXT NOT NULL,
    Department TEXT NOT NULL,
    Salary INTEGER,
    City TEXT
);

-- Insert Employee Records
INSERT INTO Employee VALUES
(101, 'Ravi', 'IT', 50000, 'Hyderabad'),
(102, 'Priya', 'HR', 40000, 'Chennai'),
(103, 'Rahul', 'IT', 60000, 'Bangalore'),
(104, 'Anjali', 'Finance', 55000, 'Mumbai'),
(105, 'Kiran', 'HR', 45000, 'Hyderabad');

--------------------------------------------------
-- DISPLAY ALL EMPLOYEES
--------------------------------------------------
SELECT * FROM Employee;

--------------------------------------------------
-- SEARCH EMPLOYEE BY ID
--------------------------------------------------
SELECT * FROM Employee
WHERE Emp_ID = 103;

--------------------------------------------------
-- SEARCH EMPLOYEE BY NAME
--------------------------------------------------
SELECT * FROM Employee
WHERE Emp_Name = 'Ravi';

--------------------------------------------------
-- EMPLOYEES IN IT DEPARTMENT
--------------------------------------------------
SELECT * FROM Employee
WHERE Department = 'IT';

--------------------------------------------------
-- EMPLOYEES FROM HYDERABAD
--------------------------------------------------
SELECT * FROM Employee
WHERE City = 'Hyderabad';

--------------------------------------------------
-- HIGHEST SALARY
--------------------------------------------------
SELECT MAX(Salary) AS Highest_Salary
FROM Employee;

--------------------------------------------------
-- LOWEST SALARY
--------------------------------------------------
SELECT MIN(Salary) AS Lowest_Salary
FROM Employee;

--------------------------------------------------
-- AVERAGE SALARY
--------------------------------------------------
SELECT AVG(Salary) AS Average_Salary
FROM Employee;

--------------------------------------------------
-- TOTAL EMPLOYEES
--------------------------------------------------
SELECT COUNT(*) AS Total_Employees
FROM Employee;

--------------------------------------------------
-- TOTAL SALARY PAID
--------------------------------------------------
SELECT SUM(Salary) AS Total_Salary
FROM Employee;

--------------------------------------------------
-- DEPARTMENT-WISE EMPLOYEE COUNT
--------------------------------------------------
SELECT Department,
       COUNT(*) AS Employee_Count
FROM Employee
GROUP BY Department;

--------------------------------------------------
-- DEPARTMENT-WISE AVERAGE SALARY
--------------------------------------------------
SELECT Department,
       AVG(Salary) AS Avg_Salary
FROM Employee
GROUP BY Department;

--------------------------------------------------
-- SORT BY SALARY ASCENDING
--------------------------------------------------
SELECT * FROM Employee
ORDER BY Salary ASC;

--------------------------------------------------
-- SORT BY SALARY DESCENDING
--------------------------------------------------
SELECT * FROM Employee
ORDER BY Salary DESC;

--------------------------------------------------
-- EMPLOYEES WITH SALARY > 50000
--------------------------------------------------
SELECT * FROM Employee
WHERE Salary > 50000;

--------------------------------------------------
-- EMPLOYEES WITH SALARY BETWEEN 45000 AND 60000
--------------------------------------------------
SELECT * FROM Employee
WHERE Salary BETWEEN 45000 AND 60000;

--------------------------------------------------
-- UPDATE EMPLOYEE SALARY
--------------------------------------------------
UPDATE Employee
SET Salary = 65000
WHERE Emp_ID = 103;

--------------------------------------------------
-- DISPLAY AFTER UPDATE
--------------------------------------------------
SELECT * FROM Employee;

--------------------------------------------------
-- DELETE EMPLOYEE
--------------------------------------------------
DELETE FROM Employee
WHERE Emp_ID = 105;

--------------------------------------------------
-- DISPLAY AFTER DELETE
--------------------------------------------------
SELECT * FROM Employee;

--------------------------------------------------
-- ADD NEW COLUMN
--------------------------------------------------
ALTER TABLE Employee
ADD COLUMN Email TEXT;

--------------------------------------------------
-- UPDATE EMAIL
--------------------------------------------------
UPDATE Employee
SET Email = 'ravi@gmail.com'
WHERE Emp_ID = 101;

--------------------------------------------------
-- DISPLAY FINAL TABLE
--------------------------------------------------
SELECT * FROM Employee;