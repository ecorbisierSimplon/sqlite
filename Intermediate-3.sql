-- SQLite
-- This query retrieves movie title, popularity, count of votes, and average rating for the top 5 movies based on a custom scoring formula.

SELECT 
    m.movie_title, 
    m.movie_popularity, 
    COUNT(r.rating_score) AS count_votes, -- Count the number of votes for each movie
    AVG(r.rating_score) AS avg_rating -- Calculate the average rating for each movie
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

