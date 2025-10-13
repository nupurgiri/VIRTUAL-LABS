-- Lab 2: WHERE Filtering
-- ===========================================
-- Goal:
-- Learn to filter rows using WHERE clause.
-- Understand logical operators, comparisons, pattern matching, NULL handling.

------------------------------------------------------------
-- 1. Simple equality
------------------------------------------------------------
-- Find all employees in IT department (dept_id = 1)
SELECT name, dept_id, salary
FROM employees
WHERE dept_id = 1;

------------------------------------------------------------
-- 2. Comparison operators
------------------------------------------------------------
-- Find employees with salary greater than 50000
SELECT name, salary
FROM employees
WHERE salary > 50000;

-- Find employees with salary between 40000 and 60000
SELECT name, salary
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

------------------------------------------------------------
-- 3. Logical operators AND, OR, NOT
------------------------------------------------------------
-- Employees in IT department with salary > 60000
SELECT name, dept_id, salary
FROM employees
WHERE dept_id = 1 AND salary > 60000;

-- Employees in HR or Finance
SELECT name, dept_id
FROM employees
WHERE dept_id = 2 OR dept_id = 4;

-- Employees not in Sales
SELECT name, dept_id
FROM employees
WHERE NOT dept_id = 3;

------------------------------------------------------------
-- 4. Pattern matching with LIKE
------------------------------------------------------------
-- Employees whose name starts with 'A'
SELECT name
FROM employees
WHERE name LIKE 'A%';

-- Employees whose name ends with 'a'
SELECT name
FROM employees
WHERE name LIKE '%a';

-- Employees whose name contains 'ra'
SELECT name
FROM employees
WHERE name LIKE '%ra%';

------------------------------------------------------------
-- 5. IN operator
------------------------------------------------------------
-- Employees in IT, HR, or Sales
SELECT name, dept_id
FROM employees
WHERE dept_id IN (1, 2, 3);

------------------------------------------------------------
-- 6. IS NULL / IS NOT NULL
------------------------------------------------------------
-- Employees with no department assigned
SELECT name
FROM employees
WHERE dept_id IS NULL;

-- Employees with department assigned
SELECT name
FROM employees
WHERE dept_id IS NOT NULL;

------------------------------------------------------------
-- ⚠️ Common Mistakes:
-- 1. Using = NULL instead of IS NULL
-- 2. Confusing AND vs OR
-- 3. Forgetting % with LIKE

------------------------------------------------------------
-- 💡 Tips:
-- - Use parentheses to clarify AND/OR combinations
-- - Pattern matching is case-insensitive in SQLite by default
-- - Always test NULL values separately

------------------------------------------------------------
-- 🧩 Explore More:
-- - How would you find employees with salary above department average?
-- - Can you select employees whose names contain 'sh' and salary < 50000?
-- - Try asking Copilot: "SQL query to find employees without manager assigned"
