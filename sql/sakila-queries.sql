SELECT *
FROM actor
WHERE last_name = 'DAVIS';

SELECT address, district, city 
FROM address AS a
JOIN city AS c ON a.city_id = c.city_id
WHERE c.city = 'Abu Dhabi'
LIMIT 15;

SELECT city
FROM city;

SELECT DISTINCT city
FROM address AS a
JOIN city AS c ON a.city_id = c.city_id
order by city;

SELECT COUNT(*)
FROM address AS a
JOIN city AS c ON a.city_id = c.city_id
GROUP BY c.city_id
HAVING COUNT(*) DESC;