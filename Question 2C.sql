-- SQLite
SELECT movies.movie_title, sub.avg_rating, sub.count_movies
FROM (
    SELECT movie_id, AVG(rating_score) AS avg_rating, COUNT(movie_id) AS count_movies
    FROM ratings
    GROUP BY movie_id
    ORDER BY AVG(rating_score) DESC, COUNT(movie_id) DESC
    LIMIT 15
) AS sub
JOIN movies ON movies.movie_id = sub.movie_id;
