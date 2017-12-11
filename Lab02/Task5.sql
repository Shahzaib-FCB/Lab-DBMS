USE sakila;
SELECT rental_date, return_date FROM rental,
(
SELECT inventory_id, inventory.film_id FROM inventory,
	(
	SELECT film_id, title FROM film 
		WHERE film.title = 'ALASKA PHANTOM'
	) AS FilmName
    WHERE inventory.film_id = 12
) AS InventoryID
WHERE InventoryID.inventory_id = rental.inventory_id;