-- Step 1: Finding the highest score (max score) in the movies table
SELECT MAX(score) 
FROM sql_cx_live.movies;

-- Step 2: Retrieve all information about the movie(s) that have a specific score (9.3).
-- This is hard-coded and not dynamic, so it lacks flexibility for future changes.
SELECT * 
FROM sql_cx_live.movies 
WHERE score = 9.3;

-- Step 3: Using a subquery to dynamically find the movie(s) with the highest score.
-- The subquery first identifies the maximum score, and the outer query retrieves all the movie(s) with that score.
-- This is more flexible as it adapts to any changes in the data, like if a higher score is added later.
SELECT * 
FROM sql_cx_live.movies 
WHERE score = (
    SELECT MAX(score) 
    FROM sql_cx_live.movies
);



