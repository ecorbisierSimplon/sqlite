-- SQLite
SELECT
    m.director_name, 
    AVG(r.rating_score) as rating_score
FROM 
    ratings r
JOIN 
    movies m ON m.movie_id = r.movie_id
GROUP BY 
    m.director_name
HAVING 
    AVG(r.rating_score) > 4
ORDER BY
    rating_score;