-- SQLite
SELECT 
    list_title, 
    list_update_timestamp_utc 
FROM lists
WHERE 

    -- Display lists of more than 3 films
    list_movie_number > 3 
    AND

    -- Compare current date -1 year with list of updates
    DATETIME(list_update_timestamp_utc) < DATE('now', '-1 year')

    -- Sort list of updates by date
ORDER BY 
    list_update_timestamp_utc DESC;