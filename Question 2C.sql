-- SQLite
SELECT m.movie_title, m.movie_popularity, COUNT(DISTINCT r.movie_id) AS count_movies, AVG(r.rating_score) AS avg_rating 
FROM ratings r 
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.movie_id
ORDER BY (m.movie_popularity * COUNT(DISTINCT r.movie_id) * AVG(r.rating_score)) DESC
LIMIT 5;