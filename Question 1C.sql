-- SQLite
SELECT movie_title
FROM movies
JOIN (
    SELECT movie_id, COUNT(movie_id) AS occurrence_count
    FROM ratings 
    GROUP BY movie_id
    ORDER BY occurrence_count DESC
    LIMIT 1
) result ON movies.movie_id = result.movie_id;

   
