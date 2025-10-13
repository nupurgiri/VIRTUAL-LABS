-- Lab 7: Transactions
-- ===========================================
-- Goal:
-- Learn to manage changes with BEGIN, COMMIT, ROLLBACK
-- Understand ACID properties

------------------------------------------------------------
-- 1. Begin transaction
------------------------------------------------------------
BEGIN TRANSACTION;

-- Example: Update salary
UPDATE employees
SET salary = salary + 5000
WHERE dept_id = 1;

-- Commit the transaction
COMMIT;

------------------------------------------------------------
-- 2. Rollback example
------------------------------------------------------------
BEGIN TRANSACTION;

INSERT INTO employees (name, dept_id, salary, join_date)
VALUES ('Test User', 2, 40000, '2025-10-10');

-- Rollback the change
ROLLBACK;

------------------------------------------------------------
-- ⚠️ Common Mistakes:
-- 1. Forgetting COMMIT → changes lost
-- 2. Rolling back by mistake → verify first
-- 3. Transactions on non-ACID DB may not work fully (SQLite has limitations)

------------------------------------------------------------
-- 💡 Tips:
-- - Use transactions for multiple related changes
-- - Always test on sample data first
-- - Understand atomicity, consistency, isolation, durability

------------------------------------------------------------
-- 🧩 Explore More:
-- - Transfer employee from one dept to another using transaction
-- - Insert multiple employees atomically
-- - Ask Copilot: "SQL transaction to move salary from one employee to another"
