# Common DDL Commands in SQL

## CREATE TABLE

**Syntax:**
```sql
CREATE TABLE table_name (
    column1 datatype [constraint],
    column2 datatype [constraint],
    ...
);
```

**Example:**
```sql
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    enrollment_date DATE
);
```

---

## ALTER TABLE

**Syntax:**
```sql
-- Add a column
ALTER TABLE table_name ADD column_name datatype;

-- Modify a column
ALTER TABLE table_name MODIFY column_name new_datatype;

-- Drop a column
ALTER TABLE table_name DROP COLUMN column_name;
```

**Examples:**
```sql
ALTER TABLE students ADD email VARCHAR(100);
ALTER TABLE students MODIFY name VARCHAR(100);
ALTER TABLE students DROP COLUMN enrollment_date;
```

---

## DROP TABLE

**Syntax:**
```sql
DROP TABLE table_name;
```

**Example:**
```sql
DROP TABLE students;
```

---

## RENAME TABLE

**Syntax:**
```sql
ALTER TABLE old_table_name RENAME TO new_table_name;
```

**Example:**
```sql
ALTER TABLE students RENAME TO enrolled_students;
```

---

## TRUNCATE TABLE

**Syntax:**
```sql
TRUNCATE TABLE table_name;
```

**Example:**
```sql
TRUNCATE TABLE students;
```

---

## CREATE INDEX

**Syntax:**
```sql
CREATE INDEX index_name ON table_name(column_name);
```

**Example:**
```sql
CREATE INDEX idx_name ON students(name);
```

---

## DROP INDEX

**Syntax (MySQL):**
```sql
DROP INDEX index_name ON table_name;
```

**Example:**
```sql
DROP INDEX idx_name ON students;
```

---
