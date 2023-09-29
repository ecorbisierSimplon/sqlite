-- SQLite
SELECT 
    m.movie_title  -- Select the movie title
FROM 
    ratings r  -- Ratings table
JOIN 
    movies m ON r.movie_id = m.movie_id  -- Join with the movies table
GROUP BY 
    r.movie_id, m.movie_title  -- Group by movie ID and movie title
ORDER BY 
    AVG(r.rating_score) * COUNT(r.movie_id) DESC  -- Order by the average rating score multiplied by the number of ratings, in descending order
LIMIT 1;  -- Limit the results to a single record (the highest rated movie)

-- Result: PULP Fiction