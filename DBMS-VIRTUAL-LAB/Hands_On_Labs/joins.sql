-- Lab 3: JOINs in SQL
-- ===========================================
-- Goal:
-- Learn how to combine rows from two or more tables using JOINs.
-- Understand INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN.
-- Practice real-world scenarios with employees and departments.

------------------------------------------------------------
-- 1. INNER JOIN
-- Only matching rows between employees and departments.
------------------------------------------------------------
SELECT e.id, e.name, e.salary, d.name AS department
FROM employees e
INNER JOIN departments d
  ON e.dept_id = d.id;

-- Example output:
-- id | name   | salary | department
-- 1  | Alice  | 50000  | HR
-- 2  | Bob    | 60000  | IT

------------------------------------------------------------
-- 2. LEFT JOIN
-- All employees are shown even if no department assigned.
------------------------------------------------------------
SELECT e.id, e.name, d.name AS department
FROM employees e
LEFT JOIN departments d
  ON e.dept_id = d.id;

-- Null will appear where no matching department exists.

------------------------------------------------------------
-- 3. RIGHT JOIN (not supported in SQLite, but supported in others)
-- All departments are shown, even if no employees exist.
-- (SQLite users: simulate with LEFT JOIN by swapping table order).
------------------------------------------------------------

------------------------------------------------------------
-- 4. FULL OUTER JOIN
-- All rows from both tables (supported in PostgreSQL/Oracle).
-- In SQLite, simulate using UNION of LEFT + RIGHT.
------------------------------------------------------------

------------------------------------------------------------
-- 5. Self JOIN
-- Compare employees to find pairs with same department.
------------------------------------------------------------
SELECT e1.name AS emp1, e2.name AS emp2, d.name AS department
FROM employees e1
JOIN employees e2
  ON e1.dept_id = e2.dept_id AND e1.id < e2.id
JOIN departments d
  ON e1.dept_id = d.id;

------------------------------------------------------------
-- ⚠️ Common Mistakes:
-- 1. Forgetting ON condition → produces CROSS JOIN (huge data).
-- 2. Using WHERE instead of ON → may give wrong results.
-- 3. Confusing LEFT JOIN vs INNER JOIN.
------------------------------------------------------------

------------------------------------------------------------
-- 💡 Tips:
-- - Use table aliases (e, d) to keep queries readable.
-- - Always check row count when joins look suspicious.
-- - Practice simulating RIGHT/FULL joins in SQLite.
------------------------------------------------------------

------------------------------------------------------------
-- 🧩 Explore More (use Copilot or your own thinking):
-- - How would you list departments with no employees?
-- - How can you find employees who share the same manager?
-- - What query shows employees who are NOT assigned to any department?
-- 👉 Frame these as questions to Copilot in your own words.
------------------------------------------------------------
