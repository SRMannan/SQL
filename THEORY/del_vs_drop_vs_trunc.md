# Comparison: DELETE vs DROP vs TRUNCATE

| Feature                  | DELETE                                      | DROP                                         | TRUNCATE                                  |
|--------------------------|---------------------------------------------|---------------------------------------------|-------------------------------------------|
| **Operation**            | Deletes specific rows from a table          | Removes the entire table from the database  | Removes all rows from a table             |
| **Impact on Table**      | Keeps the table structure and schema intact | Removes both the table structure and data   | Keeps the table structure but removes data |
| **Data Recovery**        | Can be rolled back (if using transactions)  | Cannot be rolled back once executed         | Cannot be rolled back once executed       |
| **Performance**          | Slower (especially with large tables)       | Fast                                        | Fast                                      |
| **Space Reclaiming**     | Space is reclaimed only after deletion       | Space is reclaimed immediately               | Space is reclaimed immediately            |
| **Triggers**             | Triggers are activated                      | Triggers are not activated                   | Triggers are not activated                |
| **Transaction Logging**  | Fully logged                                | Fully logged                                | Minimal logging (depends on DBMS)         |
| **Usage**                | Used for deleting specific rows based on conditions | Used for dropping the entire table structure | Used for removing all rows from a table    |

**Notes:**
- `DELETE` allows for specific row deletions and can be used with `WHERE` clauses to filter rows.
- `DROP` is used when you want to remove the entire table, its data, and structure from the database.
- `TRUNCATE` is useful for quickly removing all rows in a table while keeping the table structure intact, but it cannot be used with `WHERE` clauses.
