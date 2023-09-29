-- SQLite
SELECT user_id -- Je selectionne uniquement la colonne user_id
FROM ratings -- de la table ratings
GROUP BY user_id -- je regroupe toutes les valeurs de la colonne user_id
HAVING COUNT(user_id) > 10; -- avec HAVING, je concerve uniquement les valeurs qui sont créer au moins 10 fois
--  92740 users ont données plus de 10 résultats