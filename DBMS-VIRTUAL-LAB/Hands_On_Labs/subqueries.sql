-- Lab 5: Subqueries
-- ===========================================
-- Goal:
-- Learn to use queries inside queries (subqueries)
-- Understand WHERE, FROM (derived table), and correlated subqueries

------------------------------------------------------------
-- 1. Subquery in WHERE
-- Employees with salary above overall average
------------------------------------------------------------
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

------------------------------------------------------------
-- 2. Subquery in FROM (derived table)
-- Department salaries summarized first
------------------------------------------------------------
SELECT Department, MAX(AvgSalary) AS MaxAvgSalary
FROM (
    SELECT d.name AS Department, AVG(e.salary) AS AvgSalary
    FROM employees e
    JOIN departments d ON e.dept_id = d.id
    GROUP BY d.name
) AS DeptAvg
GROUP BY Department;

------------------------------------------------------------
-- 3. Correlated subquery
-- Employees earning more than their department average
------------------------------------------------------------
SELECT e.name, e.salary, e.dept_id
FROM employees e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE dept_id = e.dept_id
);

------------------------------------------------------------
-- ⚠️ Common Mistakes:
-- 1. Forgetting correlation → gets wrong result
-- 2. Subquery returns multiple rows in WHERE → use IN
-- 3. Complex nesting can confuse beginners

------------------------------------------------------------
-- 💡 Tips:
-- - Start with simple subquery
-- - Always alias derived tables
-- - Test small examples first

------------------------------------------------------------
-- 🧩 Explore More:
-- - Employees earning less than department average
-- - Departments with total salary > 200000
-- - Ask Copilot: "SQL query using subquery to find top earning employee per department"
