-- Multi join
SELECT *
FROM film_actor
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id;

SELECT title, film.film_id
FROM film_actor
INNER JOIN film
ON film.film_id = film_actor.film_id

SELECT title, first_name, last_name
FROM film_actor
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film.film_id = film_actor.film_id
WHERE title LIKE 'A%'
ORDER BY title;

-- SUBQUERIES
