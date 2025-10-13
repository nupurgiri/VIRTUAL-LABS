# DCL Commands – Syntax & Examples

This file contains all **important DCL commands**, their syntax, and examples.

---

## 1. GRANT
**Purpose:** Give privileges to a user or role on a database object.

### Syntax
```sql
GRANT privilege_type ON object_name TO user_name;

```

### Common Privileges
- SELECT : Read data
- INSERT : Add data
- UPDATE : Modify data
- DELETE : Remove data
- ALL PRIVILEGES - Full Control

### Examples

```sql
-- Grant SELECT and INSERT on employees table to user Jagdish
GRANT SELECT, INSERT ON employees TO Jagdish;

-- Grant full privileges on orders table to admin
GRANT ALL PRIVILEGES ON orders TO admin;
```

## 2. Revoke

**Purpose:** Remove privileges from a user or role.

### Syntax
```sql
REVOKE privilege_type ON object_name FROM user_name;
```

### Examples

```sql
-- Revoke INSERT privilege from user Jagdish
REVOKE INSERT ON employees FROM Jagdish;

-- Revoke all privileges from temp_user
REVOKE ALL PRIVILEGES ON orders FROM temp_user;
```

## Copilot Use Tips
- Prompt: "Generate SQL queries to grant SELECT, INSERT privileges on employees table to multiple users."
- Prompt: "Suggest SQL to revoke all privileges from a user in SQL oracle."
- Use Copilot to experiment with real-world roles and table access scenarios.