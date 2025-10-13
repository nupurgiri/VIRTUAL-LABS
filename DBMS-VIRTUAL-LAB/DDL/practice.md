# Practice Questions for DDL

## Level 1: Beginner

1. Write a SQL statement to create a table named "departments" with columns: dept_id (integer, primary key), dept_name (varchar), and location (varchar).
2. How do you add a new column "budget" (integer) to the "departments" table?
3. Write a command to rename the "departments" table to "company_departments".
4. Drop the "company_departments" table from the database.
5. Create a table "faculty" with faculty_id (int, primary key), name (varchar), and subject (varchar).

### 💡 Copilot Suggestions for Beginners
- Use Copilot to autocomplete common SQL commands.
- Type `CREATE TABLE` and let Copilot suggest the full syntax.
- Use comments to ask Copilot for example constraints or data types.

---

## Level 2: Intermediate

6. Alter the "faculty" table to change the data type of "subject" to varchar(100).
7. Remove the "location" column from the "departments" table.
8. Add a unique constraint on the "dept_name" column of the "departments" table.
9. Write a SQL script to create a table "projects" with project_id (int, primary key), project_name (varchar), start_date (date).
10. How do you truncate all data from "projects" but keep its structure?

### 💡 Copilot Suggestions for Intermediate Learners
- Ask Copilot to refactor your ALTER TABLE statements for different DBMS syntaxes (e.g., MySQL vs PostgreSQL).
- Request Copilot to add constraints or indexes for best practices.
- Use Copilot to generate scripts for bulk operations like TRUNCATE or DROP.

---

## Level 3: Advanced

11. Create a table "students" with columns: student_id (int, primary key), name (varchar), dept_id (int, foreign key referencing departments).
12. Modify the "students" table to add a check constraint ensuring "student_id" is greater than zero.
13. Write a SQL command to disable and then enable all constraints on the "faculty" table.
14. Create a table "audit_log" with log_id (int, primary key), action (varchar), log_time (timestamp), and set default value for log_time as current timestamp.
15. Generate a script to copy the structure of "projects" table to a new table "old_projects" without copying the data.

### 💡 Copilot Suggestions for Advanced Users
- Ask Copilot to optimize schema designs for normalization and performance.
- Use inline comments to request Copilot for migration scripts or rollback strategies.
- Ask Copilot to generate scripts compatible with multiple DBMS or cloud databases.

---

## 🚀 Tips for Optimizing Practice with Copilot

- **Prompt Examples:**  
  - `"Suggest best practices for table design"`  
  - `"Generate SQL for adding multiple constraints"`  
  - `"Refactor my DDL for portability across databases"`
- **Use Comments:**  
  - Add `-- Copilot: How can I optimize this schema?` above your SQL code.
- **Iterative Development:**  
  - Write SQL in steps and let Copilot suggest improvements at each stage.
- **Ask for Explanations:**  
  - Request Copilot to explain the SQL statements generated for deeper understanding.

---
