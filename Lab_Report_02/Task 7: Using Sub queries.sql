-- Lab Report 07

-- Submitted by: Md. Bakhtiar Galib Siyam
-- Main Batch: 54(A)
-- Continued Batch: 55(A) 
-- Student_ID: 2212081040

-- Task 7: Using Sub queries

-- Solution:
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (employee_id, first_name, last_name, department, salary) VALUES
(1, 'Siyam', 'Rahman', 'Sales', 5000),
(2, 'Rahad', 'Ahmed', 'Marketing', 6000),
(3, 'Tamim', 'Hasan', 'Sales', 7000),
(4, 'Sakib', 'Hasan', 'IT', 8000),
(5, 'Shifat', 'Rahman', 'Sales', 9000),
(6, 'Mamun', 'Rahman', 'Sales', 5000),
(7, 'Tanik', 'Ahmed', 'Marketing', 6000),
(8, 'Sojib', 'Hasan', 'Sales', 7000),
(9, 'Sahadat', 'Hasan', 'IT', 8000),
(10,'Salam', 'Rahman', 'Sales', 9000),
(11, 'Siyam', 'Rahman', 'Sales', 5000),
(12, 'Rahad', 'Ahmed', 'Marketing', 6000),
(13, 'Tamim', 'Hasan', 'Sales', 7000),
(14, 'Sakib', 'Hasan', 'IT', 8000),
(15, 'Mahadi', 'Rahman', 'Sales', 9000),
(16, 'Ridom', 'Rahman', 'Sales', 9000),
(17, 'Ahon', 'Rahman', 'Sales', 9000);

SELECT *
FROM employees
WHERE department = 'Sales'
AND department IN (
    SELECT department
    FROM employees
    GROUP BY department
    HAVING COUNT(*) > 10
);
