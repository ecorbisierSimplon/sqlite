-- SQLite
SELECT user_id 
FROM ratings
GROUP BY user_id
HAVING COUNT(user_id) >= 10

-- Je selectionne uniquement la colonne user_id
-- de la table ratings
-- je regroupe toutes les valeurs de la colonne user_id
-- avec HAVING, je concerve uniquement les valeurs qui sont créer plus ou égale à 10 fois