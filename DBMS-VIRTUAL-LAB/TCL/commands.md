# 📜 TCL Commands

Transaction Control Language (TCL) manages **transactions** in a database.

---

## 1. COMMIT
- Makes all changes in the transaction **permanent**.
```sql
UPDATE accounts SET balance = balance - 1000 WHERE id = 1;
UPDATE accounts SET balance = balance + 1000 WHERE id = 2;
COMMIT;
```

## 2. ROLLBACK
- Undoes changes made in the current transaction before COMMIT.

```sql
DELETE FROM employees WHERE department = 'HR';
ROLLBACK;  -- cancels the delete
```
## 3. SAVEPOINT
- Creates a point inside a transaction to which you can ROLLBACK partially.

```sql
SAVEPOINT sp1;

UPDATE accounts SET balance = balance - 500 WHERE id = 3;
SAVEPOINT sp2;

ROLLBACK TO sp1; -- Undo changes after sp1

```

## 4. SET TRANSACTION
- Controls properties of a transaction (read-only, isolation level).

``` sql
SET TRANSACTION READ ONLY;
```



## 🔒 Concurrency Examples

```sql
-- Transaction 1
BEGIN;
UPDATE accounts SET balance = balance - 500 WHERE id = 1;

-- Transaction 2
BEGIN;
UPDATE accounts SET balance = balance - 500 WHERE id = 1; -- waits due to lock
```

### ✅ Tip: Use COMMIT carefully—once committed, changes cannot be undone.