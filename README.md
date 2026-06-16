# Employee Database Management System (SQL)

## 📌 Project Description
This project is an Employee Database Management System developed using SQL.  
It performs various database operations such as creating tables, inserting records, updating data, deleting records, and performing analytical queries like grouping and aggregation.

---

## 🛠 Technologies Used
- SQL (SQLite / MySQL)
- DB Browser for SQLite (or any SQL tool)

---

## 📊 Database Table
### Employee Table
- Emp_ID (Primary Key)
- Emp_Name
- Department
- Salary
- City
- Email (added later using ALTER TABLE)

---

## 🔑 Features Implemented
- Create and Drop Table
- Insert Employee Records
- Select Queries (Search, Filter, Display)
- Aggregate Functions:
  - MAX Salary
  - MIN Salary
  - AVG Salary
  - SUM Salary
  - COUNT Employees
- Group By Department
- Sorting (ASC / DESC salary)
- Update and Delete operations
- Alter Table (Add new column Email)

---

## ▶ How to Run
1. Open SQLite / DB Browser for SQLite
2. Create a new database
3. Import `SQLite.sql`
4. Run the script step by step

---

## 📌 Sample Output
Employee records can be viewed using:
```sql
SELECT * FROM Employee;
