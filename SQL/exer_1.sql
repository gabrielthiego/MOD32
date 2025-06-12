-- 1. Filmes e suas categorias
SELECT f.title AS filme, c.name AS categoria
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id;

-- 2. Atores e quantidade de filmes
SELECT a.first_name || ' ' || a.last_name AS ator, COUNT(fa.film_id) AS filmes
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id
ORDER BY filmes DESC;

-- 3. Atores que atuaram em filmes com mais de 120 min
SELECT a.first_name || ' ' || a.last_name AS ator, COUNT(f.film_id) AS filmes
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE f.length > 120
GROUP BY a.actor_id
ORDER BY filmes DESC;