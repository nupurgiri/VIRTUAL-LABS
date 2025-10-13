# 🏋️ TCL Practice Exercises

Sharpen your understanding of TCL with these exercises.

---

## 🔹 Level 1 – Basics
1. Insert a new record into `students` table. Use `ROLLBACK` to undo it.  
2. Update salary of an employee in `employees` table. Use `COMMIT` to save changes.
3. 2. Insert data without committing, then use `ROLLBACK`.  
4. Use `SAVEPOINT` and rollback to it

---

## 🔹 Level 2 – Intermediate
5. Transfer ₹2000 from Account A to Account B using `UPDATE` + `COMMIT`.  
6. Insert 3 rows into `orders` table, then rollback only the last insert somehow.
7. 3. Use `SET TRANSACTION READ ONLY` to query a table.
  

---

## 🔹 Level 3 – Advanced
8. Create a transaction where multiple employees get a bonus. If one update fails, rollback to `SAVEPOINT`.  
9. Use `SET TRANSACTION` to make a read-only transaction and try to insert a row. Observe what happens.  
10.Demonstrate a **Dead-Lock** using two sessions.  


---

💡 **Tip:** Always test TCL commands in a sample DB. Never in production.
