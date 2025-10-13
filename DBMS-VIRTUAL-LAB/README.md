# DBMS Virtual Lab

A virtual lab environment designed to practice and understand **Database Management Systems (DBMS)** concepts using **Oracle SQL*Plus**.  
This repository provides resources, setup instructions, syllabus, and example lab exercises to guide your DBMS learning journey.  
💡 **Supercharged with GitHub Copilot** → Your AI pair programmer that helps you **write, learn, and experiment with SQL faster**.

---

## 🚀 GETTING STARTED...

### 1. Clone the repository
```bash
git clone https://github.com/CODE-NAP29/DBMS-VIRTUAL-LAB.git
cd DBMS-VIRTUAL-LAB
```

### 2. Open vs code and go to extensions and install below :
- **GitHub Copilot**
- **SQLTools** (for running SQL queries directly from VS Code)
- **SQLite** (if you want to practice with SQLite as well)

### 3. Open the database
- In VS Code, go to the SQLite Explorer tab (from the installed extension).

- Click “Open Database” → Select database/company.db from this repo.

- Expand the database to see all tables:

- department

- employee

- project

- works_on

### ✅ NOTE: *Now you can learn from our contents folders respectively, practice queries on these tables and ask doubts or tips to github copilot extension in vs code, Hence all in one at your fingertips in VS CODE only!*

##

## 🚀 Why GitHub Copilot for DBMS?

Instead of memorizing queries, you can **learn by doing** with Copilot:
- ✨ **Query Suggestions**: Start typing `SELECT` or `CREATE TABLE` and Copilot suggests complete queries.  
- 🧑‍💻 **Error Fixing**: If your SQL syntax fails, Copilot auto-suggests corrections.  
- 🎯 **Practice Generator**: Ask Copilot to create random practice queries for constraints, joins, or TCL commands.  
- 🔄 **Scenario Simulation**: Get Copilot to simulate **banking transactions**, **library systems**, or **e-commerce schemas** with `GRANT`, `ROLLBACK`, `SAVEPOINT`, etc.  
- ⚡ **Learn Faster**: Reduce time searching syntax online — Copilot brings it inside your editor.  

> With Copilot, this repo becomes not just a static lab, but an **interactive virtual mentor**.

---

## 📘 Scope of DBMS

Database Management System (DBMS) is software that allows users to **store, organize, retrieve, and manipulate data** efficiently.  
The scope of DBMS includes:

- **Data Modeling**: Designing databases using ER models, relational models, and schemas.  
- **Data Storage & Retrieval**: Efficient organization and querying of large datasets.  
- **Transaction Management**: Ensuring consistency, atomicity, isolation, and durability (ACID properties).  
- **Concurrency Control**: Handling simultaneous data access without conflicts.  
- **Data Integrity & Security**: Enforcing rules and restricting unauthorized access.  
- **Backup & Recovery**: Protecting against data loss.  
- **Real-World Applications**: Banking, e-commerce, reservations, inventory systems, and more.  

---

## ⚙️ Installation Guide: Oracle SQL*Plus

Follow these steps to install and run **Oracle SQL*Plus** on your system:

### 1. Download Oracle Database
- Visit [Oracle Database Downloads](https://www.oracle.com/database/technologies/).  
- Choose **Oracle Database Express Edition (XE)** (free version).  

### 2. Install Oracle Database XE
- Run the installer and follow on-screen instructions.  
- Set up your **username** and **password** during installation.  

### 3. Run SQL*Plus (Command Line Tool)
- SQL*Plus is included with Oracle Database.  
- To verify installation:  
  ```bash
  sqlplus /nolog
