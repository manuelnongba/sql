SELECT name, price
FROM products
WHERE price > (
  SELECT
  MAX(price)
  FROM
  products
  WHERE
  department = 'Toys'
);

SELECT name, price,
(
  SELECT
  MAX(price)
  FROM
  products
  FROM
  products
  WHERE
  price > 867
);

SELECT name, price _weight_ratio
FROM
(SELECT name, price / weight AS price weight ratio
  FROM products
) AS p
WHERE price _weight_ratio > 5;

SELECT name, price,
(
  SELECT price
  FROM products
  WHERE id = 3
) AS id_3_ Price
FROM products
WHERE price > 867;