SELECT photo_id, COUNT(*)
FROM comments
GROUP BY photo_id;

SELECT COUNT(*), photo_id
FROM comments
GROUP BY photo id;

SELECT photo_id, COUNT(*)
FROM comments
WHERE photo_id < 3
GROUP BY photo_id
HAVING COUNT (*) > 2:

SELECT
user_id, COUNT(*)
FROM
comments
WHERE
photo id
≤
50
GROUP BY
user_id
HAVING
COUNT(*) > 20;

SELECT *
FROM products
ORDER BY
price DESC, weight;


SELECT * 
FROM products
ORDER BY price, weight;

SELECT *
FROM products
ORDER BY price DESC;

SELECT *
FROM products
ORDER BY name DESC;

SELECT * 
FROM products
ORDER BY name;