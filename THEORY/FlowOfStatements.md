SELECT column1, AGGREGATE_FUNCTION(column2) AS alias
FROM table_name
WHERE condition
GROUP BY column1, column2
HAVING AGGREGATE_FUNCTION(column2) > value
ORDER BY column1 ASC, column2 DESC
LIMIT number_of_rows;
