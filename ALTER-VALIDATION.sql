-- ALTER TABLE products
-- ALTER COLUMN price
-- SET NOT NULL;

-- CREATE TABLE products (
-- id serial primary key,
-- name vachar(50) UNIQUE,
-- department varchar(50) not NULL,
-- price integer not NULL,
-- price integer default 9999,
-- price integer CHECK (price > 0)
-- )

-- UPDATE products
-- SET price = 9999
-- WHERE price is NULL;

-- insert into products(name, department, weight)
-- values ('Shoes', 'Clothes', 5)

-- ALTER TABLE products
-- ALTER COLUMN price
-- SET DEFAULT 9999;

-- unique should be in parenthesis
-- ALTER TABLE products
-- ADD UNIQUE(name)

-- insert into products(name, department, price, weight)
-- values ('Shirt', 'Tools', 24, 1)

-- ALTER TABLE products
-- DROP CONSTRAINT products_name_key;

-- ALTER TABLE products
-- ADD UNIQUE (name, department)

-- ALTER TABLE products
-- DROP CONSTRAINT products_name_department_key;

-- insert into products (name, department, price, weight)
-- values ('Belt', 'House', -99, 1)

-- ALTER TABLE products
-- ADD CHECK (price > 0)

-- CREATE TABLE orders (
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR(40) NOT NULL,
-- 	created_at TIMESTAMP NOT NULL,
-- 	est_delivery TIMESTAMP NOT NULL,
-- 	CHECK (created_at < est_delivery)
-- )

-- insert into orders (name, created_at, est_delivery)
-- values ('Shirt', '2000-NOV-20 -1:00 AM', '2000-NOV-10 01:00AM')

-- SELECT COALESCE(10, 5);

-- SELECT COALESCE((1)::BOOLEAN::INTEGER, 0)

-- SELECT COALESCE(1)::BOOLEAN::INTEGER


























