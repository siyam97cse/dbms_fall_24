-- Create the departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100)
);

-- Create the employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Create the performance_reviews table
CREATE TABLE performance_reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    review_date DATE,
    sales_performance_score DECIMAL(5, 2),
    customer_feedback_score DECIMAL(5, 2),
    project_completion_score DECIMAL(5, 2),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Insert sample data into the departments table
INSERT INTO departments (department_name)
VALUES ('Sales'), ('Engineering'), ('HR'), ('Marketing');

-- Insert sample data into the employees table
INSERT INTO employees (employee_name, department_id)
VALUES ('John Doe', 1), ('Jane Smith', 2), ('Alice Johnson', 3), ('Bob Lee', 4);

-- Insert sample data into the performance_reviews table
INSERT INTO performance_reviews (employee_id, review_date, sales_performance_score, customer_feedback_score, project_completion_score)
VALUES 
(1, '2023-09-01', 85.50, 90.00, 95.00),
(2, '2023-09-01', 75.00, 88.50, 92.00),
(3, '2023-09-01', NULL, 82.00, 85.50),
(4, '2023-09-01', 95.00, 94.50, 98.00),
(1, '2024-02-15', 88.00, 92.00, 96.00),
(2, '2024-02-15', 78.50, 89.00, 90.00),
(3, '2024-02-15', NULL, 85.00, 88.50),
(4, '2024-02-15', 96.00, 95.50, 97.00);

-- Query for Q1: Count the total number of performance reviews conducted
SELECT COUNT(*) AS total_reviews
FROM performance_reviews;
