-- SQLite
SELECT user_id -- Selecting only the 'user_id' column
FROM ratings -- from the 'ratings' table
GROUP BY user_id -- Grouping all values by 'user_id'
HAVING COUNT(user_id) > 10; -- Using HAVING, keeping only the values that appear at least 10 times
-- 92,740 users have provided more than 10 results
