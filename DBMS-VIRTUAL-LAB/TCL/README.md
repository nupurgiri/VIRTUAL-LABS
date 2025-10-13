# 🔄 TCL (Transaction Control Language) – Virtual Lab

Welcome to the **TCL Branch** of the DBMS Virtual Lab!  
This branch focuses on **managing transactions** in databases, ensuring **consistency, reliability, and concurrency control**.

---

## 📂 Files in this Branch

| File | Description |
|------|-------------|
| `commands.md` | Contains syntax, explanations, and examples of TCL commands. |
| `practice.md` | Includes level-wise practice exercises for TCL commands. |
| `prompts.md` | Predefined GitHub Copilot prompts to explore more scenarios. |

---

## 📝 How to Use This Branch
1. Start with `commands.md` → Learn syntax & examples of `COMMIT`, `ROLLBACK`, `SAVEPOINT`, `SET TRANSACTION`.  
2. Practice with `practice.md` → Try exercises from **basic to advanced levels**.  
3. Use `prompts.md` → Let **GitHub Copilot** generate real-world scenarios for faster learning.

---

## 📚 Full Theory – Transactions & Concurrency

### ✅ What is a Transaction?
A **transaction** is a sequence of database operations performed as a single logical unit of work.  

Properties of a transaction (**ACID**):  
- **Atomicity** → All operations succeed, or none do.  
- **Consistency** → Database remains valid after execution.  
- **Isolation** → Multiple transactions execute without interfering.  
- **Durability** → Changes persist even after failures.  

---

### 🔑 TCL Commands
- **COMMIT** → Save changes permanently.  
- **ROLLBACK** → Undo uncommitted changes.  
- **SAVEPOINT** → Mark a point for partial rollback.  
- **SET TRANSACTION** → Define transaction properties.  

---

### 🔒 Concurrency Control
When multiple transactions run at the same time:  
- **Problems**: Dirty reads, lost updates, uncommitted dependency, phantom reads.  
- **Solutions**: Locking, timestamp ordering, serializability.  

---

### 🔐 Locking Mechanisms
- **Shared Lock (S)** → Read-only access.  
- **Exclusive Lock (X)** → Modify access, no one else can read/write.  
- **Two-Phase Locking (2PL)** → Ensures serializability:  
  - *Growing phase* (acquire locks).  
  - *Shrinking phase* (release locks).  

---

### ⚠️ Deadlocks
- Occur when two or more transactions wait indefinitely for each other’s locks.  
- **Prevention**: Ordering, wait-die/wound-wait schemes.  
- **Detection & Recovery**: Kill one transaction.  

---

### 📊 Isolation Levels
SQL defines levels to balance performance and safety:  
1. **Read Uncommitted** → Allows dirty reads.  
2. **Read Committed** → Prevents dirty reads.  
3. **Repeatable Read** → Prevents dirty & non-repeatable reads.  
4. **Serializable** → Full isolation, but slow.  

---

## 🤝 Why TCL is Important
- Maintains **data integrity** in concurrent environments.  
- Provides **control over when changes are permanent**.  
- Enables **error recovery** using rollback mechanisms.  
- Supports **multi-user database systems** safely.  

---

## 🚀 Power of GitHub Copilot in This Lab
- Generate **real-world transaction scenarios** (banking, e-commerce).  
- Auto-complete **SQL commands** with proper syntax.  
- Suggest **locking strategies & isolation levels** for exercises.  
- Provide **step-by-step explanations** in comments for your SQL code.  

💡 With Copilot, you learn **faster and deeper** by exploring **AI-suggested queries and scenarios**.
