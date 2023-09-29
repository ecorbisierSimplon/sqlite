-- SQLite
-- This query retrieves movie title, popularity, count of votes, and average rating for the top 5 movies based on a custom scoring formula.
-- I doubt this request
/*
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
    (m.movie_popularity * count_votes * avg_rating) DESC -- Custom scoring formula based on popularity, count of votes, and average rating
LIMIT 5;
*/


