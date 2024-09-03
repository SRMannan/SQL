# SQL Overview

## *Discussion Topics: DDL, DML, DCL, TCL, Constraints*

## What is SQL?
SQL (Structured Query Language) is a standard programming language used for managing relational databases and performing various operations on the data in them.

# SQL Commands

| **Category**                        | **Commands**                                                |
|-------------------------------------|-------------------------------------------------------------|
| **Data Definition Language (DDL)**  | - CREATE<br>- ALTER<br>- DROP<br>- TRUNCATE<br>- RENAME     |
| **Data Manipulation Language (DML)**| - SELECT<br>- INSERT<br>- UPDATE<br>- DELETE                |
| **Data Control Language (DCL)**     | - GRANT<br>- REVOKE                                         |
| **Transaction Control Language (TCL)**| - COMMIT<br>- ROLLBACK<br>- SAVEPOINT                     |
| **Constraints**                     | - PRIMARY KEY<br>- FOREIGN KEY<br>- CHECK<br>- UNIQUE<br>- DEFAULT<br>- NOT NULL |

### 1. **Data Definition Language (DDL)**
DDL commands are used to define and manage the structure of a database and its objects, such as tables, indexes, and schemas.

- **CREATE**: Used to create new database objects like tables, indexes, or databases.
  ```sql
  CREATE TABLE Employees (
      EmployeeID int,
      FirstName varchar(255),
      LastName varchar(255)
  );

- **ALTER**: Used to modify the structure of an existing database object, such as adding or dropping columns in a table.

  ```sql
  ALTER TABLE Employees ADD COLUMN BirthDate date;

- **DROP**: Used to delete database objects like tables or databases.
  ```sql
  DROP TABLE Employees;

- **TRUNCATE**: Used to remove all records from a table, but the structure remains.
  ```sql
  TRUNCATE TABLE Employees;

- **RENAME**: Used to rename a database object.
  ```sql
  RENAME TABLE Employees TO Staff;


### 2. **Data Manipulation Language (DML)**
DML commands are used to manipulate the data stored in database objects.

- **SELECT**: Used to retrieve data from one or more tables.
  ```sql
  SELECT FirstName, LastName FROM Employees;

- **INSERT**: Used to insert new records into a table.
  ```sql
  INSERT INTO Employees (EmployeeID, FirstName, LastName)
  VALUES (1, 'John', 'Doe');

- **UPDATE**: Used to modify existing records in a table.
  ```sql
  UPDATE Employees SET LastName = 'Smith' WHERE EmployeeID = 1;

- **DELETE**: Used to delete records from a table.
  ```sql
  DELETE FROM Employees WHERE EmployeeID = 1;


### 3. **Data Control Language (DCL)**
DCL commands are used to control access to the data in the database.

- **GRANT**: Used to give specific privileges to users or roles.
  ```sql
  GRANT SELECT ON Employees TO user1;

- **REVOKE**: Used to remove previously granted privileges.
  ```sql
  REVOKE SELECT ON Employees FROM user1;


### 4. **Transaction Control Language (TCL)**
TCL commands are used to manage transactions in a database. A transaction is a sequence of operations performed as a single logical unit of work.

- **COMMIT**: Used to save all changes made in the current transaction.
  ```sql
  COMMIT;

- **ROLLBACK**: Used to undo changes made in the current transaction.
  ```sql
  ROLLBACK;


- **SAVEPOINT**: Used to set a point within a transaction to which you can later roll back.
  ```sql
  SAVEPOINT sp1;


### 5. **Constraints**
Constraints are rules enforced on data columns in a table to ensure data integrity.

- **PRIMARY KEY**: Uniquely identifies each record in a table.
  ```sql
  CREATE TABLE Employees (
      EmployeeID int PRIMARY KEY,
      FirstName varchar(255),
      LastName varchar(255)
  );

- **FOREIGN KEY**: Ensures referential integrity by linking to a primary key in another table.
  ```sql
  CREATE TABLE Orders (
      OrderID int,
      EmployeeID int,
      FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
  );


- **CHECK**: Ensures that all values in a column satisfy a specific condition.
  ```sql
  CREATE TABLE Employees (
      EmployeeID int PRIMARY KEY,
      Age int CHECK (Age >= 18)
  );


- **UNIQUE**: Ensures that all values in a column or a set of columns are unique.
  ```sql
  CREATE TABLE Employees (
      EmployeeID int PRIMARY KEY,
      Email varchar(255) UNIQUE
  );


- **DEFAULT**: Sets a default value for a column if no value is provided.
  ```sql
  CREATE TABLE Employees (
      EmployeeID int PRIMARY KEY,
      StartDate date DEFAULT CURRENT_DATE
  );


- **NOT NULL**: Ensures that a column cannot have a NULL value.
  ```sql
  CREATE TABLE Employees (
      EmployeeID int PRIMARY KEY,
      LastName varchar(255) NOT NULL
  );


The SQL code is now correctly formatted 
