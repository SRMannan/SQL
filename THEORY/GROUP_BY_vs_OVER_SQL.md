
# `GROUP BY` vs `OVER` in SQL

| **Feature**                | **`GROUP BY`**                                    | **`OVER`**                                      |
|----------------------------|---------------------------------------------------|-------------------------------------------------|
| **Output**                 | Returns one row per group                         | Retains all original rows                       |
| **Aggregation**            | Aggregate functions collapse data                 | Aggregate functions apply over a window         |
| **Use Case**               | Summarizing data by groups                        | Performing calculations while keeping row details |
| **Non-Aggregated Columns** | Must be included in `GROUP BY`                    | Can include non-aggregated columns              |
| **Performance**            | Can be slower for large datasets due to grouping  | Often more efficient for complex calculations   |
