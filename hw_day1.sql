--1. How many actors are there with the last name ‘Wahlberg’?

SELECT *
FROM actor
WHERE last_name = 'Wahlberg';
-- output: 2

--2. How many payments were made between $3.99 and $5.99?
SELECT *
FROM payment;

SELECT count(payment)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--output: 5,607

--3. What film does the store have the most of? (search in inventory)
--SELECT count(film_id)
--FROM inventory
--WHERE film_id IN (SELECT film_id FROM inventory GROUP BY film_id HAVING COUNT(film_id) > 7);
--GROUP BY film_id
--HAVING COUNT(film_id) > 7;
--SELECT title FROM film;
--SELECT COUNT(film_id), film_id
--FROM inventory
--GROUP BY film_id
--HAVING COUNT(film_id) > 7;
SELECT title, film_id
FROM film
WHERE film_id IN (SELECT film_id FROM inventory GROUP BY film_id HAVING COUNT(film_id) > 7);
--output: Academy Dinosaur	1
Apache Divine	31
Beverly Outlaw	69
Bingo Talented	73
Boogie Amelie	86
Bound Cheaper	91
Bucket Brotherhood	103
Butterfly Chocolat	109
Cat Coneheads	127
Confidential Interview	174
Crossroads Casualties	193
Cupboard Sinners	199
Curtain Videotape	200
Dancing Fever	206
Deer Virginian	220
Dinosaur Secretary	231
Dogma Family	239
Dynamite Tarzan	266
Expendable Stallion	295
Family Sweet	301
Forward Temple	331
Frost Head	341
Garden Island	350
Giant Troopers	356
Gilmore Boiled	358
Gleaming Jawbreaker	361
Goodfellas Salute	369
Greatest North	378
Grit Clockwork	382
Harry Idaho	403
Heavyweights Beast	412
Hobbit Alien	418
Horror Reign	434
Hustler Party	444
Innocent Usual	460
Invasion Cyclone	468
Juggler Hardly	489
Kiss Glory	500
Loathing Legally	525
Lose Inch	531
Married Go	559
Metropolis Coma	572
Mockingbird Hollywood	586
Moon Bunch	595
Muscle Bright	609
Network Peak	621
Operation Operation	638
Pity Bound	683
Primary Glass	697
Pulp Beverly	702
Ridgemont Submarine	730
Rocketeer Mother	738
Roses Treasure	745
Rugrats Shakespeare	748
Rush Goodfellas	753
Saturday Lambs	764
Scalawag Duck	767
Seabiscuit Punk	773
Shock Cabin	789
Spy Mile	835
Sting Personal	846
Storm Happiness	849
Streetcar Intentions	856
Swarm Gold	870
Sweethearts Suspects	873
Telemark Heartbreakers	880
Titans Jerk	893
Torque Bound	897
Trip Newton	911
Virginian Pluto	945
Wife Turn	973
Zorro Ark	1000

--4. How many customers have the last name ‘William’?

SELECT *
FROM customer
WHERE last_name = 'Williams';
--output: 0 have a last name william but 1 has a last name of williams






--5. What store employee (get the id) sold the most rentals?

SELECT count(staff_id)
FROM rental
GROUP BY staff_id;
--output: staff id 1 sold 8040 and staff id2 sold 8004



--6. How many different district names are there?
SELECT DISTINCT district
FROM store,address;
--output = 378



--7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY count DESC;
--output: Lambs Cincinatti




--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT last_name
FROM customer
WHERE last_name  LIKE '__%es' AND store_id = 1 ;
--output = 13




--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

SELECT count(movie_id)
FROM payment_amount
WHERE customer_id BETWEEN 380 AND 430 AND rental_id;




--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
SELECT count(rating),rating
FROM film
GROUP BY rating;
--output pg-13 has most movie total




