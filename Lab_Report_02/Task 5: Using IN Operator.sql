-- Lab Report 05

-- Submitted by: Md. Bakhtiar Galib Siyam
-- Main Batch: 54(A)
-- Continued Batch: 55(A) 
-- Student_ID: 2212081040

-- Task 5: Using IN Operator

-- Solution:

CREATE TABLE orders12 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount INT
);

INSERT INTO orders12 (order_id, customer_id, order_date, amount) VALUES
(1, 1, '2024-11-01', 150),
(2, 2, '2024-11-02', 200),
(3, 3, '2024-11-03', 300),
(4, 4, '2024-11-04', 450),
(5, 5, '2024-11-05', 120);

SELECT *
FROM orders12
WHERE customer_id IN (1, 2, 3);
