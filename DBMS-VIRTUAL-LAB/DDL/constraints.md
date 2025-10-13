# ⚖️ DDL Constraints – Syntax & Examples

Constraints are rules applied on table columns to maintain **data accuracy and integrity** in the database.

---

## 1. PRIMARY KEY
**Ensures uniqueness + NOT NULL for a column (or set of columns).**

### Syntax
```sql
CREATE TABLE table_name (
    column_name datatype PRIMARY KEY
);
```
### Example
```sql
CREATE TABLE students (
    roll_no INT PRIMARY KEY,
    name VARCHAR(50)
);
```
## 2. FOREIGN KEY
**Maintains referential integrity by linking two tables.**
### Syntax
```sql
CREATE TABLE child_table (
    column_name datatype,
    FOREIGN KEY (column_name) REFERENCES parent_table(primary_key_column)
);

```
### Example
```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

```
## 3. UNIQUE
**Ensures all values in a column are different.**

### Syntax
```sql
CREATE TABLE table_name (
    column_name datatype UNIQUE
);
```
### Example
```sql
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);
```
## 4. NOT NULL
**Ensures a column cannot store NULL values.**

### Syntax
```sql
CREATE TABLE table_name (
    column_name datatype NOT NULL
);

```
### Example
```sql
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL
);

```

## 5. CHECK
**Ensures that column values satisfy a condition.**

### Syntax
```sql
CREATE TABLE table_name (
    column_name datatype CHECK (condition)
);


```
### Example
```sql
CREATE TABLE accounts (
    acc_id INT PRIMARY KEY,
    balance DECIMAL(10,2) CHECK (balance >= 0)
);


```


## 6. DEFAULT
**Provides a default value for a column if no value is specified.**

### Syntax
```sql
CREATE TABLE table_name (
    column_name datatype DEFAULT default_value
);

```
### Example
```sql
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    status VARCHAR(20) DEFAULT 'Available'
);

```

