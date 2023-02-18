SELECT url, username
FROM
photos
JOIN users ON users.id = photos.users id;

SELECT
comments.id AS comment_id, photos.id
FROM
photos
JOIN comments ON photos.id = comments.photo_id;

SELECT FROM
comments. id AS comment_id, p.id
photos AS p
JOIN comments ON p.id = comments.photo_id;

SELECT url, username
FROM
photos
LEFT JOIN users ON users. id = photos.user id;

SELECT url, username
FROM
photos
RIGHT JOIN users ON users.id = photos.user id;

SELECT
url,
username
FROM
photos
FULL JOIN users ON users.id = photos.user id;

SELECT url, contents
FROM
comments
JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id
= photos. user_id;

SELECT
url,
contents,
username
FROM
comments
JOIN photos ON photos.id
= comments.photo id
JOIN users ON' users.id = comments.user id AND users.id = photos.user id;