SELECT * FROM actor;

-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name) AS total_last_name_of_WAHLBERG
FROM actor
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount) AS total_between_4_and_6
FROM payment
WHERE amount 
BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory table);

-- 4. How many customers have the last name ‘William’?
SELECT COUNT(last_name) AS total_last_name_william
FROM customer
WHERE last_name = 'William'; -- Their isnt a William but one Williams did show.

-- 5. What store employee (get the id) sold the most rentals?
SELECT MAX(staff_id) AS employee_id_who_sold_most_rentals
FROM rental;

-- 6. How many different distinct names are there?
SELECT COUNT(DISTINCT name) AS total_distinct_names
FROM category;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT MAX(film_id) AS film_with_most_actors
FROM film_actor
GROUP BY film_id;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(last_name) AS customer_last_name_ending_with_es, store_id
FROM customer
WHERE last_name like '%es' AND store_id = 1
GROUP BY store_id;

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
select count(amount), amount 
from payment 
where customer_id
between 380 and 430
group by amount
having count(amount) > 250;

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
select count(rating), rating from film
group by rating 
order by count;