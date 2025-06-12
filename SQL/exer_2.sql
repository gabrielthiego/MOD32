-- 1. Contador filmes e categorias
SELECT COUNT(*) FROM (
  SELECT f.film_id
  FROM film f
  JOIN film_category fc ON f.film_id = fc.film_id
) AS sub;

-- 2. Contador atores por número de filmes
SELECT COUNT(*) FROM (
  SELECT a.actor_id
  FROM actor a
  JOIN film_actor fa ON a.actor_id = fa.actor_id
  GROUP BY a.actor_id
) AS sub;

-- 3. Contador atores que atuaram em filmes > 120min
SELECT COUNT(*) FROM (
  SELECT a.actor_id
  FROM actor a
  JOIN film_actor fa ON a.actor_id = fa.actor_id
  JOIN film f ON fa.film_id = f.film_id
  WHERE f.length > 120
  GROUP BY a.actor_id
) AS sub;