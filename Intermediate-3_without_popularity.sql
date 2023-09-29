-- SQLite
-- Selects the movie title from the 'movies' table
SELECT 
    m.movie_title 
FROM 
    ratings r -- Creates an alias 'r' for the 'ratings' table

-- Joins the 'ratings' and 'movies' tables based on the movie ID
JOIN 
    movies m ON r.movie_id = m.movie_id

-- Groups the results by movie ID
GROUP BY 
    m.movie_id

-- Orders the results based on the product of the count of ratings and the average rating score, in descending order
ORDER BY 
    (COUNT(r.rating_score) * AVG(r.rating_score)) DESC 

-- Limits the results to 5
LIMIT 5;



-- Result : 
-- Pulp Fiction
-- A Clockwork Orange
-- Fight Club
-- Eternal Sunshine of the Spotless Mind
-- The Shining