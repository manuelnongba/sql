'used when producing a single value in subquery'

SELECT
  (
    SELECT
      MAX(price)
    FROM
      products
  ) / (SELECT AVG(price) FROM products);


  SELECT
  (
    SELECT
      MAX(price)
    FROM
      products
  ), (SELECT AVG(price) FROM products);