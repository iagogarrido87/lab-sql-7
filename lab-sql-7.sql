-- which are the actors whose last names are not repeated?
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) = 1;

-- Which last names appear more than once?
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1;

-- Number of rentals processed by each employee
SELECT staff_id, COUNT(*) AS rental_count
FROM rental
GROUP BY staff_id;

-- Number of films released each year
SELECT EXTRACT(YEAR FROM release_year) AS release_year, COUNT(*) AS film_count
FROM film
GROUP BY EXTRACT(YEAR FROM release_year);

-- Number of films for each rating
SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating;

-- Mean length of the film for each rating type
SELECT rating, ROUND(AVG(length), 2) AS mean_length
FROM film
GROUP BY rating;

-- Movies (rating) with a mean duration of more than two hours
SELECT rating
FROM film
GROUP BY rating
HAVING AVG(length) > 120;