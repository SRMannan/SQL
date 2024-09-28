
# SQL Stored Procedures and Triggers

## 1. Stored Procedures:
- **Definition**: A stored procedure is a precompiled collection of SQL statements that are executed as a single unit.
- **Purpose**: Encapsulate logic, automate tasks, and improve code reusability.
- **Features**:
  - Can accept input parameters and return output.
  - Allows the use of control structures (`IF`, `LOOP`, etc.).
  - Improves performance due to precompilation.
  - Enhances security by limiting direct access to database tables.
  
- **Example**:
  ```sql
  CREATE PROCEDURE GetEmployeesByDept(IN dept_id INT)
  BEGIN
      SELECT * FROM employees WHERE department_id = dept_id;
  END;
  ```

## 2. Triggers:
- **Definition**: A trigger is a special kind of stored procedure that automatically runs when certain events occur in a table.
- **Purpose**: Enforce business rules, maintain audit trails, and automatically handle changes in data.
- **Events**:
  - **BEFORE INSERT/UPDATE/DELETE**: Executes the trigger before the specified event occurs.
  - **AFTER INSERT/UPDATE/DELETE**: Executes the trigger after the event occurs.
  
- **Features**:
  - Automatically invoked by database operations.
  - Cannot accept parameters.
  - Used for auditing, logging, and enforcing constraints.

- **Example**:
  ```sql
  CREATE TRIGGER before_employee_insert
  BEFORE INSERT ON employees
  FOR EACH ROW
  BEGIN
      SET NEW.created_at = NOW();
  END;
  ```
