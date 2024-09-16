-- lab Aggregation Function
-- Md. Bakhtiar Galib Siyam
-- Student_ID: 2212081040

-- Question 1: Write an SQL query to count the total number of performance reviews conducted.

-- Anster to the Question No. 01:

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
(1, 1, '2023-09-01', 9, 7, 3),
(2, 2, '2023-09-01', 7, 8, 9),
(3, 3, '2023-09-01', NULL, 2, 85),
(4, 4, '2023-09-01', 95, 94, 98),
(5, 5, '2024-02-15', 88, 92, 96),
(6, 1, '2024-02-15', 78, 89, 90),
(7, 2, '2024-02-15', NULL, 85, 88),
(8, 3, '2024-02-15', 96, 95, 97);

-- Query for Q1: Count the total number of performance reviews conducted
SELECT COUNT(*) AS total_reviews
FROM performance_reviews;
