-- Types of Subqueries
-- 1. BASED ON RETURN TYPE
-- 1.a. SCALAR SUBQUERY : returns a single value (e.g., a number, a string, or a date) from the inner query.
--     The outer query uses this single value for comparison or calculation.
-- 1.b. ROW SUBQUERY : inner query returns multiple rows but only one column. 
--     The outer query works with a list of values (one per row).
-- 1.c. TABLE SUBQUERY : inner query returns multiple rows and multiple columns, 
--     essentially a table, and the outer query uses this table for comparison or filtering.

-- 2. BASED ON WORKING
-- 2.a. INDEPENDENT SUBQUERY : inner query is independent of the outer query, meaning it runs on its own.
--     The inner query can be executed separately without relying on any data from the outer query.
-- 2.b. CORRELATED SUBQUERY : inner query depends on values from the outer query, 
--     meaning it is executed repeatedly for each row processed by the outer query.
--     The inner query cannot be executed independently because it references data from the outer query.

-- SELECT MOVIE WITH THE HIGHEST PROFIT
-- Here we calculate profit as (gross - budget) and then find the movie with the maximum profit.
-- The subquery identifies the maximum profit, and the outer query returns the details of that movie.
select * from sql_cx_live.movies 
where (gross - budget) = (select max(gross - budget) from sql_cx_live.movies);

-- COUNT MOVIES WITH A RATING HIGHER THAN THE AVERAGE RATING
-- We are using a subquery to find the average movie rating.
-- The outer query counts how many movies have a score greater than this average.
select count(*) from sql_cx_live.movies 
where score > (select avg(score) from sql_cx_live.movies);

-- FIND HIGHEST RATED MOVIE OF 2000
-- First, we simply list all movies from 2000, ordered by rating (score).
-- Then we find the movie with the highest rating in the year 2000 by using a subquery
-- that returns the maximum score of that year and fetch the movie with that rating.
select name, year, score from sql_cx_live.movies 
where year = 2000 order by score DESC;

select * from sql_cx_live.movies 
where score = (select max(score) from sql_cx_live.movies where year = 2000) 
and year = 2000;

-- FIND THE HIGHEST RATED MOVIE AMONG MOVIES WITH VOTES > AVERAGE VOTES
-- In this subquery, we first find the average number of votes.
-- Then we use the outer query to find the movie with the highest number of votes among those 
-- movies whose vote count is above the dataset's average.
select max(votes) from sql_cx_live.movies 
where votes > (select avg(votes) from sql_cx_live.movies);

select name, votes from sql_cx_live.movies 
where votes = (select max(votes) from sql_cx_live.movies 
where votes > (select avg(votes) from sql_cx_live.movies));
