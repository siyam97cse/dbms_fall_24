-- Task: Lab Aggregation Function
-- Submitted by: Md. Bakhtiar Galib Siyam
-- Main Batch: 54(A)
-- Continued Batch: 55(A) 
-- Student_ID: 2212081040

-- Question 4: Write an SQL query to find the total project completion score for each department.

-- Anster to the Question No. 04:

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE performance_reviews (
    review_id INT PRIMARY KEY,
    employee_id INT,
    review_date DATE,
    sales_performance_score INT,  
    customer_feedback_score INT,  
    project_completion_score INT, 
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO departments (department_id, department_name)
VALUES (1, 'Finance'), (2, 'IT'), (3, 'Transport'), (4, 'Marketing'), (5, 'Quality_Assurance');

INSERT INTO employees (employee_id, employee_name, department_id)
VALUES (1, 'Bakhtiar', 1), (2, 'Galib', 2), (3, 'Siyam', 3), (4, 'Tamim', 4), (5, 'Tanik', 5);

INSERT INTO performance_reviews (review_id, employee_id, review_date, sales_performance_score, customer_feedback_score, project_completion_score)
VALUES 
(1, 1, '2022-08-16', 9, 7, 3),
(2, 2, '2020-09-17', 7, 8, 9),
(3, 3, '2023-09-18', 6, 2, 5),
(4, 4, '2023-09-19', 5, 4, 8),
(5, 5, '2024-04-13', 8, 9, 6),
(6, 1, '2024-05-14', 7, 8, 0),
(7, 2, '2024-11-15', 3, 5, 8),
(8, 3, '2024-04-16', 6, 9, 9),
(9, 3, '2024-05-16', 4, 5, 7),
(10, 3, '2024-02-16', 6, 3, 9);


-- This is the main part of the code which finds the total project completion score for each department.                                                                                                    
  
SELECT d.department_name, SUM(pr.project_completion_score) AS total_project_score
FROM performance_reviews pr
JOIN employees e ON pr.employee_id = e.employee_id
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;
