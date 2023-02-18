SELECT
name,
population / area AS population density
FROM
cities
WHERE
population density > 6000

SELECT name, area FROM cities WHERE area NOT IN (3043);