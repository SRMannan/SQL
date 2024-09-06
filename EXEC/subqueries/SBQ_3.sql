-- FIND ALL USERS THAT HAVE NEVER PLACED AN ORDER
select * from users where user_id NOT IN (Select distinct(user_id) from orders);

-- FIND MOVIES MADE BY TOP 3 DIRECTORS(IN TERMS OF TOTAL GROSS INCOME)
select director , sum(gross) as sum_gross 
from movies
group by director
order by sum(GROSS) DESC
LIMIT 3;

-- nOW TO WHOLE QUERY
WITH top_director AS (
    SELECT director
    FROM movies
    GROUP BY director
    ORDER BY SUM(gross) DESC
    LIMIT 3
)
SELECT * 
FROM movies 
WHERE director IN (SELECT director FROM top_director);

-- FIND ALL MOVIES OF ALL ACTORS WHOSE FILMOGRAPHY AVG RATING > 8.5 (TAKE CUTOFF as 25000 votes)
SELECT * 
FROM movies
WHERE star IN (
	Select star
	FROM movies
	where votes > 25000
	group by star
	having avg(score) > 8.5
);
