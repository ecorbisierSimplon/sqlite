-- SQLite
SELECT movie_title
FROM movies
ORDER BY movie_popularity DESC -- je trie la colonne movie popularity en ordre décroissant
LIMIT 1; -- je garde la 1ère ligne
-- Resultat : PULP Fiction