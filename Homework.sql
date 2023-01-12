--anwsers are on each search


-- 1. List all customers who live in Texas (use
-- JOINs)
SELECT first_name, last_name, district
FROM customer
INNER JOIN address
ON address.address_id = customer.customer_id
WHERE district LIKE 'Texas';
--Anwser
-- 2. Get all payments above $6.99 with the Customer's Full
-- Name
SELECT first_name, last_name, amount
FROM customer
INNER JOIN payment
ON payment.customer_id = customer.customer_id
WHERE amount >= 6.99;

--Anwser
-- 3. Show all customers names who have made payments over $175(use
-- subqueries)
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING SUM(amount) > 175
    ORDER BY SUM(amount) DESC
);

--Anwser
-- 4. List all customers that live in Nepal (use the city
-- table)
-- SELECT address_id, city 
SELECT country, first_name, last_name
FROM country
INNER JOIN customer
ON customer.address_id = country.country_id
WHERE country LIKE 'Nepal';

--Anwser
-- 5. Which staff member had the most
-- transactions?
SELECT first_name, count(rental_id)
FROM staff
INNER JOIN payment
ON payment.staff_id = staff.staff_id
GROUP BY staff.first_name
HAVING count(rental_id) > 0;

--Anwser JON
-- 6. How many movies of each rating are
-- there?
SELECT COUNT(category_id),rating
FROM film_category
INNER JOIN film
ON film.film_id = film_category.film_id
GROUP BY film.rating
HAVING COUNT(category_id) > 0;


--Anwser
-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    WHERE amount >= 6.99
    GROUP BY payment.customer_id
    HAVING COUNT(amount) = 1
);

--Anwser
-- 8. How many free rentals did our stores giveaway?
SELECT amount, rental_date
FROM payment
INNER JOIN rental
ON rental.rental_id = payment.payment_id
WHERE amount <= 0;
