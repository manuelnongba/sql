SELECT user id, MAX(id)
FROM comments
GROUP BY user id;

SELECT user id
FROM comments
GROUP BY user id;

SELECT MIN(id)
FROM comments;

SELECT AVG(id)
FROM comments;

SELECT SUM(id)
FROM comments;

SELECT COUNT(id)
FROM comments;

SELECT MAX(id)
FROM comments;