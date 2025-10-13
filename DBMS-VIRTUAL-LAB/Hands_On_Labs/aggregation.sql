-- Lab 4: Aggregation
-- ===========================================
-- Goal:
-- Learn to summarize data using COUNT, SUM, AVG, MIN, MAX.
-- Understand GROUP BY and HAVING clauses.

------------------------------------------------------------
-- 1. COUNT
-- Number of employees in each department
------------------------------------------------------------
SELECT d.name AS Department, COUNT(e.id) AS TotalEmployees
FROM departments d
LEFT JOIN employees e ON d.id = e.dept_id
GROUP BY d.name;

------------------------------------------------------------
-- 2. SUM
-- Total salary per department
------------------------------------------------------------
SELECT d.name AS Department, SUM(e.salary) AS TotalSalary
FROM employees e
JOIN departments d ON e.dept_id = d.id
GROUP BY d.name;

------------------------------------------------------------
-- 3. AVG
-- Average salary per department
------------------------------------------------------------
SELECT d.name AS Department, AVG(e.salary) AS AvgSalary
FROM employees e
JOIN departments d ON e.dept_id = d.id
GROUP BY d.name;

------------------------------------------------------------
-- 4. MIN / MAX
-- Minimum and maximum salary per department
------------------------------------------------------------
SELECT d.name AS Department, MIN(e.salary) AS MinSalary, MAX(e.salary) AS MaxSalary
FROM employees e
JOIN departments d ON e.dept_id = d.id
GROUP BY d.name;

------------------------------------------------------------
-- 5. HAVING vs WHERE
-- Filter groups after aggregation
------------------------------------------------------------
-- Departments with average salary > 50000
SELECT d.name AS Department, AVG(e.salary) AS AvgSalary
FROM employees e
JOIN departments d ON e.dept_id = d.id
GROUP BY d.name
HAVING AVG(e.salary) > 50000;

------------------------------------------------------------
-- ⚠️ Common Mistakes:
-- 1. Using WHERE instead of HAVING for aggregates
-- 2. Forgetting GROUP BY
-- 3. Mixing columns with aggregates without grouping

------------------------------------------------------------
-- 💡 Tips:
-- - Use meaningful aliases
-- - Aggregate functions ignore NULLs by default
-- - Test with small datasets first

------------------------------------------------------------
-- 🧩 Explore More:
-- - Find departments with highest MIN salary
-- - Count employees earning above department average
-- - Try asking Copilot: "SQL query to list department, min, max, avg salary"
