-- SQLite
-- This query retrieves movie title, popularity, count of votes, and average rating for the top 5 movies based on a custom scoring formula.
-- This code is not correct
SELECT 
    m.movie_title, 
    m.movie_popularity, 
    COUNT(r.rating_score) AS count_votes, 
    AVG(r.rating_score) AS avg_rating
FROM 
    ratings r -- Creates alias r
JOIN 
    movies m ON r.movie_id = m.movie_id --
GROUP BY 
    m.movie_id, 
    m.movie_title, 
    m.movie_popularity
ORDER BY 
    (m.movie_popularity * COUNT(r.rating_score) * AVG(r.rating_score)) DESC -- Custom scoring formula based on popularity, count of votes, and average rating
LIMIT 5;

