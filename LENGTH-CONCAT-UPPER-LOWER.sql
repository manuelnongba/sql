SELECT name, population / area AS population_density;

SELECT name || country FROM cities;

SELECT name || ', ' || country FROM cities;

SELECT CONCAT (name, country) AS location FROM cities;

SELECT LOWER(CONCAT (name, ',', country)) AS location FROM cities;

