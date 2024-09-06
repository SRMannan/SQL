-- MULTI ROW MULTI EXTRACTION
USE sql_cx_live;

-- FIND MOST PROFITABLE MOVIE FOR EVERY YEAR
SELECT *
From movies
where(year , gross-budget) IN
(
	Select year , max(gross - budget) as max_profit
	From movies
	group by year
); 


-- FIND HIGEST RATED MOVIE OF EACH GENRE with votes > 25000
SELECT * 
From movies
where (genre , score) IN (
		select genre , max(score) as maxi
		from movies
		where votes > 25000
		group by genre
)
AND votes > 25000;


-- FIND THE HIGHEST GROSSING MOVIES OF top 5 ACTOR/DIREC COMBO IN TERMS OF TOTAL GROSS INCOME
with top_duo AS (
			SELECT star, director, MAX(gross)
			FROM movies
			GROUP BY star, director
			ORDER by MAX(gross) DESC 
			LIMIT 5
)

SELECT * 
from movies
where (star,director,gross) IN (select * from top_duo);
