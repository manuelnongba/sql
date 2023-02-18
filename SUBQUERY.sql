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

SELECT
name,
price,
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