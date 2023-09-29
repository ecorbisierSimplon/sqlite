-- SQLite
SELECT * 
FROM movies
WHERE director_name = 'George Lucas'
ORDER BY movie_release_year;
-- I'm looking for all rows where the value in the 'director_name' column is 'George Lucas'
-- I'm sorting the result in ascending order based on the 'movie_release_year' column