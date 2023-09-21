SELECT *
FROM actor;

SELECT first_name, last_name FROM actor;

SELECT CONCAT(first_name,' ',last_name) AS full_name
FROM actor;

SELECT * FROM customer;

SELECT *
FROM actor 
WHERE first_name = 'Nick';

SELECT *
FROM actor 
WHERE first_name LIKE 'Nick';

SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE 'N%';

--query actor for actors with first name starting with k and only 3 letters
SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE 'K__';

SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE 'K__%th';

SELECT *
FROM payment;

SELECT customer_id, amount
FROM payment
WHERE amount > 2.00
ORDER BY amount ASC;

SELECT customer_id, amount
FROM payment 
WHERE amount < 7.99
ORDER BY amount DESC;

SELECT customer_id, amount
FROM payment 
WHERE amount <= 7.99
ORDER BY amount DESC;

SELECT amount, customer_id
FROM payment 
WHERE amount >= 2.99
ORDER BY amount ASC;

SELECT amount, customer_id
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99
ORDER BY amount DESC;

SELECT amount, customer_id
FROM payment 
WHERE amount <> 0;

SELECT amount, customer_id
FROM payment 
WHERE amount != 0;

SELECT * FROM LANGUAGE

SELECT film_id, language_id
FROM film;

-- Aggregators

SELECT COUNT(film_id), language_id
FROM film
GROUP BY languaue_id;

SELECT COUNT(film_id)
FROM film 
WHERE language_id =2;

SELECT * FROM inventory;

SELECT COUNT(inventory_id), store_id
FROM inventory
GROUP BY store_id;


SELECT *
FROM payment;

SELECT SUM (amount) customer_id
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount)DESC;

SELECT AVG(amount)
FROM payment;

SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

SELECT COUNT(payment_id)
FROM payment
WHERE amount > 5.99;

SELECT count (amount), amount
FROM payment
GROUP BY DISTINCT amount;

SELECT MIN(amount) AS "smallest_amount_above_7.99"
FROM payment
WHERE amount > 7.99;

SELECT MAX(amount) AS "max amount"
FROM payment;

SELECT MAX(amount) AS "max amount", customer_id
FROM payment
WHERE customer_id = 184
GROUP BY customer_id;


SELECT COUNT(payment_id), customer_id
FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) > 20;






