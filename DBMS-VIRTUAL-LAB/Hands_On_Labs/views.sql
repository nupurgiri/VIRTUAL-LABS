-- Lab 6: Views
-- ===========================================
-- Goal:
-- Learn to create reusable virtual tables using VIEW
-- Practice simple and join-based views

------------------------------------------------------------
-- 1. Simple view
------------------------------------------------------------
CREATE VIEW view_employee_name AS
SELECT id, name, salary
FROM employees;

-- Use the view
SELECT * FROM view_employee_name;

------------------------------------------------------------
-- 2. View with JOIN
------------------------------------------------------------
CREATE VIEW view_employee_department AS
SELECT e.name AS Employee, d.name AS Department, e.salary
FROM employees e
JOIN departments d ON e.dept_id = d.id;

-- Query the view
SELECT * FROM view_employee_department;

------------------------------------------------------------
-- 3. Updating through view (limited in SQLite)
-- Only simple view updates allowed
------------------------------------------------------------
UPDATE view_employee_name
SET salary = salary + 1000
WHERE id = 2;

------------------------------------------------------------
-- ⚠️ Common Mistakes:
-- 1. Trying to update complex views with joins
-- 2. Forgetting to drop views before creating again
-- 3. Using same name as table

------------------------------------------------------------
-- 💡 Tips:
-- - Use views for reports or repeated queries
-- - Keep names meaningful
-- - Check DB limitations for updateable views

------------------------------------------------------------
-- 🧩 Explore More:
-- - Create a view for employees earning above 50000
-- - Create a view for projects with employee count
-- - Ask Copilot: "SQL view for employees and project roles"
