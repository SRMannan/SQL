-- CORRELATED SUBQUERY
USE sql_cx_live;

select name , genre , score 
from movies
where (genre,score) IN
(
			select genre , avg(score)
			from movies
			group by genre

);

-- FIND INFO OF ALL THOSE MOVIES WHOSE RATING > AVG RATING OF THAT GENRE
select * 
from movies m1
where score > (	select avg(score) from movies m2 where m1.genre = m2.genre);

-- FETCH THE DETAILS OF THE EMPLOYEE(S) WHO ARE EARNING SALARY MORE THAN OR SAME AS THE AVG SALARY EARNED BY EMPLOYEES OF THE SAME DESIGNATION
-- select *
-- from employees e1
-- where salary >= ( select avg(salary) from employee e2 where e2.designation = e1.designation);

-- HOW SUB RELATED QUERY WORKs
-- for each row in outer query table , subsitute value in inner query
-- execute inner query independently
-- substitute inner query by calc value
-- if where clause cond met , add row to result

