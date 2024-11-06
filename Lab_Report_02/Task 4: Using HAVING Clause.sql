-- Lab Report 04

-- Submitted by: Md. Bakhtiar Galib Siyam
-- Main Batch: 54(A)
-- Continued Batch: 55(A) 
-- Student_ID: 2212081040

-- Task 4: Using HAVING Clause

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
(5, 'Shifat', 'Rahman', 'Sales', 9000);

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 6000;




