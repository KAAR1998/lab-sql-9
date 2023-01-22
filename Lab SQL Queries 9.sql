USE sakila; 
SHOW FULL TABLES;

-- How many distinct (different) actors' last names are there?
SELECT COUNT(DISTINCT(last_name)) FROM sakila.actor;


-- Since how many days has the company been operating (check DATEDIFF() function)? *COME BACK TO THIS ONE*
SELECT * FROM sakila.payment;

SELECT MIN(payment_date) as start_date, MAX(payment_date) as last_date; 

-- Show rental info with additional columns month and weekday. Get 20 results. *COME BACK TO THIS ONE*
SELECT * FROM sakila.rental
SELECT MONTH(rental_date) AS month;

-- Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week. *COME BACK TO THIS ONE*
SELECT rental_date FROM sakila.rental
SELECT DAYOFWEEK(rental_date);

-- Get release years.
SELECT release_year FROM sakila.film;

-- Get all films with ARMAGEDDON in the title.
SELECT * FROM sakila.film
WHERE title REGEXP "ARMAGEDDON$"; 

-- Get all films which title ends with APOLLO.
SELECT * FROM sakila.film
WHERE title LIKE "%APOLLO"; 

-- Get 10 the longest films.
SELECT * FROM sakila.film
ORDER BY length DESC 
LIMIT 10; 

-- How many films include Behind the Scenes content?
SELECT COUNT(*) FROM sakila.film 
WHERE special_features REGEXP "Behind the Scenes$";