USE sakila;

SELECT amount , payment_date FROM payment
WHERE payment.payment_date LIKE "2005-08-%" and amount ORDER BY amount DESC;