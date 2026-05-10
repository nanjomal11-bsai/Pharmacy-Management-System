# Pharmacy Management System

## Project Description
Pharmacy Management System is a Java-based desktop application developed using Object-Oriented Programming (OOP) concepts and Java Swing GUI. The system is designed to help pharmacies and medical stores manage suppliers, medicines, stock inventory, and medicine search operations efficiently.

The application provides a modern graphical user interface with database connectivity using MySQL for storing and retrieving records.
# Presented By: 
- Name: Nanjo Mal
- CMS: 023-250226
- Section: B

---

# Project Objectives
- Manage supplier records
- Manage medicine inventory
- Search medicines quickly
- Maintain stock information
- Practice OOP concepts in a real-world project

---

# Main Features

## Supplier Management
- Insert new supplier
- View supplier records

## Medicine Management
- Insert new medicines
- View medicine inventory

## Search System
- Search medicines by name

## Reports
- View low stock medicines report

## Generate Bill
- It will calculate Bill
  

---

# OOP Concepts Used

- Classes & Objects
- Encapsulation
- Methods & Constructors
- Exception Handling
- Database Connectivity (JDBC)
- GUI Development using Java Swing
- Modular Programming

---

# Technologies Used

- Java
- Java Swing
- JDBC
- MySQL
- GitHub

---

# Database Information

## Database Name
```sql
pharmacyAndMedicalStock
````

## Tables Used

* supplier
* medicine
* pharmacy
* patient
* prescription

---

# How to Run the Project

## Requirements

* JDK 8 or above
* MySQL Server
* MySQL Connector/J
* Java IDE

---

## Steps to Run

### 1. Clone or Download the Project

```bash
git clone YOUR_GITHUB_REPOSITORY_LINK
```

### 2. Create Database

Open MySQL and create database:

```sql
CREATE DATABASE pharmacyAndMedicalStock;
```

### 3. Import SQL File

Import the provided `.sql` file into MySQL.

### 4. Configure Database

Update database username and password in:

```java
DBConnection.java
```

Example:

```java
return DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/pharmacyAndMedicalStock",
    "root",
    "your_password"
);
```

### 5. Run the Project

Run the main file:

```java
PharmacySystemProjectGUI.java
```

---

# Project Structure

```text
src/
│
├── PharmacySystemProjectGUI.java
├── DBConnection.java
│
database/
│
├── pharmacy.sql
│
README.md
```

---

---

# Video Demonstration

YouTube Video Link:
```text
https://youtu.be/lHJ99Igyzoc?si=7bPjWbl0wGu9HKpW
```
---

# GitHub Repository

GitHub Repository Link:

```text
PASTE_YOUR_GITHUB_REPOSITORY_LINK_HERE
```

---

# Future Improvements

* Sales module
* Billing system
* User authentication
* Admin dashboard
* Export reports
* Advanced stock analytics

---

# Conclusion

This project helped us understand practical implementation of Object-Oriented Programming concepts, Java Swing GUI development, and database connectivity using JDBC and MySQL.

---

```
```
