-- Lab 9: Normalization
-- ===========================================
-- Goal:
-- Learn 1NF, 2NF, 3NF
-- Understand designing clean database schema

------------------------------------------------------------
-- 1. 1NF – Remove repeating groups
------------------------------------------------------------
-- Bad design: one table stores multiple phone numbers in single column
-- employees(id, name, phones)
-- Correct: create separate table EmployeePhones(emp_id, phone)

------------------------------------------------------------
-- 2. 2NF – Remove partial dependency
------------------------------------------------------------
-- Example: Orders(order_id, prod_id, prod_name, cust_id)
-- Problem: prod_name depends on prod_id, not whole PK
-- Solution: separate Product(prod_id, prod_name) table

------------------------------------------------------------
-- 3. 3NF – Remove transitive dependency
------------------------------------------------------------
-- Example: Employees(id, dept_id, dept_name)
-- dept_name depends on dept_id → move to Departments table

------------------------------------------------------------
-- ⚠️ Common Mistakes:
-- 1. Not normalizing → redundancy
-- 2. Over-normalizing → too many tables
-- 3. Forgetting foreign keys

------------------------------------------------------------
-- 💡 Tips:
-- - 1NF → atomic columns
-- - 2NF → full PK dependency
-- - 3NF → no transitive dependency
-- - Use meaningful table and column names

------------------------------------------------------------
-- 🧩 Explore More:
-- - Can you redesign employees/projects to reduce redundancy?
-- - How to link employees to multiple projects efficiently?
-- - Ask Copilot: "SQL schema design normalized for employees and projects"
