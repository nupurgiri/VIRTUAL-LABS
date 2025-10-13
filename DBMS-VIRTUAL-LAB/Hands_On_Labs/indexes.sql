-- Lab 8: Indexes
-- ===========================================
-- Goal:
-- Speed up queries on frequently filtered columns

------------------------------------------------------------
-- 1. Single-column index
------------------------------------------------------------
CREATE INDEX idx_salary ON employees(salary);

-- Test query using index
SELECT * FROM employees WHERE salary > 50000;

------------------------------------------------------------
-- 2. Multi-column index
------------------------------------------------------------
CREATE INDEX idx_dept_salary ON employees(dept_id, salary);

-- Test query using index
SELECT * FROM employees
WHERE dept_id = 1 AND salary > 60000;

------------------------------------------------------------
-- 3. Dropping an index
------------------------------------------------------------
DROP INDEX IF EXISTS idx_salary;

------------------------------------------------------------
-- ⚠️ Common Mistakes:
-- 1. Indexes speed up reads but slow down inserts/updates
-- 2. Too many indexes → overhead
-- 3. Forgetting index name in DROP INDEX

------------------------------------------------------------
-- 💡 Tips:
-- - Index frequently filtered or joined columns
-- - Avoid indexing low-cardinality columns
-- - Monitor query performance

------------------------------------------------------------
-- 🧩 Explore More:
-- - Suggest index for employees table to optimize joins with projects
-- - Find employees with salary in top 10% quickly
-- - Ask Copilot: "SQL index to speed up employee salary queries"
