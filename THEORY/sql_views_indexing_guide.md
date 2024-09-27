
# Views in SQL

In SQL, **views** are virtual tables that represent the result of a query. They don’t store data themselves; instead, they dynamically fetch data from underlying base tables whenever they are accessed. Views can be thought of as saved SQL queries that allow you to simplify complex queries, enhance security, and provide a layer of abstraction.

## Advantages of Views in SQL:
- **Simplifies Complex Queries**: Encapsulates complex logic, making it easier to reuse.
- **Security**: Restricts access to sensitive data by showing only specific columns/rows.
- **Data Abstraction**: Hides underlying table structures and provides a user-friendly layer.
- **Reusability**: Allows using the same query logic across different parts of an application.
- **Logical Independence**: Can change the underlying tables without affecting the view users.

## Disadvantages of Views in SQL:
- **Performance Overhead**: Views do not store data, so querying complex views can be slow.
- **Non-updatable Views**: Complex views with joins, aggregates, or subqueries often cannot be updated.
- **Maintenance**: If the underlying tables change (like column removal), the view might break.
- **Limited Functionality**: Cannot always use certain SQL clauses (e.g., `ORDER BY`) directly in a view.

# Indexing in DBMS/SQL

**Indexing** is a technique used to improve the performance of database queries by reducing the amount of data that needs to be scanned. An index is a data structure (often a B-tree or hash table) that helps locate rows efficiently in a table.

## Key Points about Indexing:

### Purpose:
- **Speed up searches**: Indexes allow the database to find rows more quickly without scanning the entire table.
- **Improve performance**: Especially useful for large databases where query speed is critical.

### How It Works:
- When you create an index on a column, the database creates a separate structure that stores the values of the indexed column in a sorted manner along with pointers to the corresponding rows in the table.
- The query optimizer can use this index to quickly locate the data.

## Types of Indexes:
- **Primary Index**: Automatically created when a primary key is defined. It is unique and helps to enforce uniqueness.
- **Unique Index**: Ensures all the values in the indexed column are distinct.
- **Clustered Index**: Sorts the actual data rows of the table based on the index key. A table can have only one clustered index.
- **Non-clustered Index**: Does not alter the physical order of the table but creates a separate structure to point to the data. Multiple non-clustered indexes are allowed on a table.

## Advantages of Indexing:
- **Faster Query Execution**: Improves the performance of `SELECT`, `JOIN`, `WHERE`, `ORDER BY`, and `GROUP BY` queries.
- **Reduced Disk I/O**: Helps in minimizing the number of disk reads required.

## Disadvantages of Indexing:
- **Slower Write Operations**: `INSERT`, `UPDATE`, and `DELETE` operations may become slower because the index needs to be updated every time.
- **Increased Storage**: Indexes require additional space on disk.

## When to Use Indexes:
- Frequently used columns in `WHERE` clauses.
- Columns involved in sorting (`ORDER BY`), grouping (`GROUP BY`), or joining tables (`JOIN`).

## When to Avoid Indexing:
- Small tables where full table scans are faster.
- Frequently updated columns, as it may slow down write operations.
