USE sakila;
SELECT actor.first_name, actor.last_name FROM actor,
(
	SELECT film_actor.actor_id, film_actor.film_id FROM film_actor, film_text
	WHERE film_actor.film_id = 5 and film_text.title = "AFRICAN EGG"
) AS DerivedTable
WHERE DerivedTable.actor_id = actor.actor_id;