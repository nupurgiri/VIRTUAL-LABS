# 🔐 DCL (Data Control Language) – Virtual Lab

Welcome to the **DCL Branch** of the DBMS Virtual Lab!  
This section focuses on commands that **control access and permissions** to the database.

---

## 📘 What is DCL?
- DCL stands for **Data Control Language**.
- It deals with **rights, permissions, and access control** in the database.
- Ensures **security** and **controlled data usage** by users.

---

## 📂 Topics Covered

- Theory (simple explanation)  
- Syntax  
- Examples  
- Practice Queries  
- GitHub Copilot Prompts  


---

## 📝 Learning Flow
1. Begin with **GRANT** → Learn how to assign privileges.  
2. Move to **REVOKE** → Understand how to remove permissions.  
3. Try combining GRANT + REVOKE for different users to simulate **real-world DB admin scenarios**.

---

## 🏋️ Practice Instructions
1. Open each `.md` file in this branch.  
2. Execute queries in your database with multiple users (e.g., MySQL with `CREATE USER`).  
3. Try granting different levels of access like SELECT, INSERT, UPDATE.  
4. Revoke some permissions and check the effect.  

---

## 🤖 Using GitHub Copilot for DCL
GitHub Copilot can **speed up your practice** by:
- Auto-generating permission management queries.  
- Suggesting different **GRANT/REVOKE** scenarios.  
- Helping you simulate enterprise-level access control.  

### Example Prompts for Copilot:
- *"Write SQL to grant SELECT and UPDATE privileges on table employees to user Jagdish."*  
- *"Generate queries to revoke all privileges from a user in MySQL."*  
- *"Suggest SQL permissions setup for an e-commerce DB with roles: admin, seller, buyer."*  

👉 With Copilot, you can **experiment with multiple user-role access patterns** without memorizing all syntax.

---

## 📌 Note
- DCL commands are usually executed by **Database Administrators (DBA)**.  
- Use these commands carefully, as they directly affect **security**.  
- Best learned in combination with **TCL** (for transaction control).  

---

🔗 **Next Step:** After finishing DCL, switch to the [`TCL`](https://github.com/your-username/DBMS-VIRTUAL-LAB/tree/TCL) branch to learn transaction control commands.

---
