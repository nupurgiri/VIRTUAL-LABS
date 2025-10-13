-- Lab 1: SELECT Basics
-- ===========================================
-- Goal:
-- Learn to fetch data from tables using SELECT statement.
-- Understand column selection, aliases, ordering, distinct values, and limits.

------------------------------------------------------------
-- 1. Fetch all columns from employees
------------------------------------------------------------
SELECT * FROM employees;

------------------------------------------------------------
-- 2. Fetch only specific columns: name and salary
------------------------------------------------------------
SELECT 3name, salary FROM employees;

------------------------------------------------------------
-- 3. Use column aliases to make output readable
------------------------------------------------------------
SELECT name AS EmployeeName, salary AS MonthlySalary
FROM employees;

------------------------------------------------------------
-- 4. Filter with ORDER BY
------------------------------------------------------------
-- Show employees sorted by salary descending
SELECT name, salary
FROM employees
ORDER BY salary DESC;

------------------------------------------------------------
-- 5. DISTINCT to remove duplicates
------------------------------------------------------------
-- Example: List all unique salaries
SELECT DISTINCT salary
FROM employees;

------------------------------------------------------------
-- 6. LIMIT (only first few rows)
------------------------------------------------------------
-- Show first 5 employees only
SELECT * FROM employees
LIMIT 5;

------------------------------------------------------------
-- ⚠️ Common Mistakes:
-- 1. Using SELECT * in production instead of specific columns
-- 2. Forgetting ORDER BY direction (ASC vs DESC)
-- 3. Using LIMIT without ORDER BY -> may get random rows

------------------------------------------------------------
-- 💡 Tips:
-- - Always select only what you need
-- - Use aliases to make output readable
-- - Combine ORDER BY with LIMIT for top N queries

------------------------------------------------------------
-- 🧩 Explore More:
-- - How would you list employees with salary above the average?
-- - Can you select employee name and email in alphabetical order?
-- - Try asking Copilot: "SQL query to get top 3 highest paid employees"
