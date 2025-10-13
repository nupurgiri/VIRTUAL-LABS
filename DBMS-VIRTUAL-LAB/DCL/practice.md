# 🔐 DCL Practice Exercises

This file contains **hands-on practice exercises** for DCL commands: `GRANT` and `REVOKE`.  
Work through them **level by level** to build confidence in managing database permissions.

---

## 🔹 Level 1 – Basic

✔ Goal: Understand simple `GRANT` and `REVOKE` usage.  

1. Create a new user:
```sql
CREATE USER student1 IDENTIFIED BY 'password123';
```

2. Grant `SELECT` privilege on courses table to student1:
``` sql
GRANT SELECT ON courses TO student1;
```

3. Revoke the `SELECT` privilege:
```sql
REVOKE SELECT ON courses FROM student1;
```

4.verify privileges:
```sql
SHOW GRANTS FOR student1;
```

## 📝 Practice Questions
1. Create a user `test_user` only grant `SELECT` access to the `students` table.

2. Later, revoke this access. Verify whether privileges are revoked.

3. What happens if you try to revoke a privilege that was never granted?



## 🔹 Level 2 – Intermediate

✔ Goal: Practice multiple privileges and partial revokes.  

1. Create user `intern` :
```sql
CREATE USER intern IDENTIFIED BY 'password123';
```

2. Grant multiple privileges:
```sql
GRANT INSERT, UPDATE ON employees TO intern;
```

3.Revoke one previlege (`UPDATE` only):

```sql
REVOKE UPDATE ON employees FROM intern;
```

## 📝 Practice Questions
1. Create a user `analyst` who can SELECT and UPDATE the `sales` table. Then revoke only the UPDATE permission.

2. Give a user `reporter` SELECT access to two tables (`orders`, `customers`). Try revoking SELECT only from one table. What do you observe?
3. Can a user still log in to the DB if all privileges are revoked? Test and find out.

4. Verify what privileges remain:
```sql
SHOWS GRANTS FOR intern;
```

5. Create another user `guest` and grant read-only access:
```sql
CREATE USER guest IDENTIFIED BY 'guestpass';
GRANT SELECT ON employees TO guest;
GRANT SELECT ON departments TO guest;
```
## 🔹 Level 3 – Advanced
✔ Goal: Simulate a role-based access control system.

1. Create three users:

```sql
CREATE USER admin IDENTIFIED BY 'adminpass';
CREATE USER manager IDENTIFIED BY 'managerpass';
CREATE USER employee IDENTIFIED BY 'emppass';
```

2. Assign privileges:
```sql
-- Admin gets everything
GRANT ALL PRIVILEGES ON *.* TO admin;

-- Manager gets SELECT, INSERT, UPDATE on projects
GRANT SELECT, INSERT, UPDATE ON projects TO manager;

-- Employee gets only SELECT on projects
GRANT SELECT ON projects TO employee;
```

3. Test the setup by trying queries as each user.
4. Revoke privillegs:

```sql
-- Remove INSERT from manager
REVOKE INSERT ON projects FROM manager;

-- Remove all privileges from employee
REVOKE ALL PRIVILEGES ON projects FROM employee;
```



## 📝 Practice Questions
1. Create a role-based system for a library database:
- Librarian - ALL PRIVILEGES on `books`
- Assistant - INSERT, UPDATE on `books`
- Student - SELECT only
Then revoke the `UPDATE` privilege from Assistant.

2. Set up a banking database with users:
- `admin` : full Access
- `cashier` : INSERT, UPDATE, on `transactions`
- auditor - SELECT only <br>
Later, revoke `INSERT` from cashier and test.
3.Design your own scenario for an e-commerce DB (admin, seller, buyer). Assign privileges logically, then revoke selectively.


### ✅ Use GitHub Copilot to:

- Generate variations of GRANT/REVOKE queries.
- Suggest scenarios for banks, e-commerce, or schools.
- Create quick exercises for role-based permissions.

