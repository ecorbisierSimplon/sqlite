-- SQLite
SELECT movie_title
FROM movies 
-- je cherche le titre du film le plus noté en parcourant une autre table
-- qui contient les scores de chaque film
JOIN ( 
    SELECT movie_id, COUNT(movie_id) -- je parcoure movie_id et je compte le nombre de fois qu'un film a eu un vote
    AS occurrence_count -- et je l'enregistre dans une colonne virtuelle
    FROM ratings 
    GROUP BY movie_id -- on regroupe tout les elements par valeurs
    ORDER BY occurrence_count DESC -- en triant la colonne virtuelle en ordre décroissant
    LIMIT 1 -- je garde uniquement le 1er élément
) result ON movies.movie_id = result.movie_id; -- je 'JOIN' les deux table pour afficher le nom du film

-- 