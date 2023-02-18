CREATE TABLE users(
id SERIAL PRIMARY KEY,
username VARCHAR(50)
)

CREATE TABLE photos (
id SERIAL PRIMARY KEY,
url VARCHAR(200)
user_id INTEGER REFERENCES users(id)
)

CREATE TABLE photos (
id SERIAL PRIMARY KEY,
ur VARCHAR(200),
user_id INTEGER REFERENCES users (id) ON DELETE SET NULL
);
INSERT INTO
photos (url, user_id)
VALUES
('http:/one.jpg'
4),


INSERT INTO
  photos (url, user_id)
VALUES
  ('http: //two.jpg', 1)
  ('http: //25.jpg', 1)
  ('http: //36.jpg', 1)
  ('http: //754.jpg', 2)
  ('http: //35.jpg', 3)
  ('http: //256.jpg', 4)

INSERT INTO cities (name, country, population, area) VALUES ('Tokyo', 'Japan', 38505000, 8223);

UPDATE cities
SET population = 39505000
WHERE name =
"Tokyo";

DELETE FROM cities WHERE name =
'Tokyo'

DELETE FROM users
WHERE id =
4:

DROP TABLE photos;