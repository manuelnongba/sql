'SHOW THE NAME,PRICE OF THE MOST MOST EXPENSIVE PRODUCT IN EACH DEPARTMENT'

SELECT
  name,
  department,
  price
FROM
  products AS p1
WHERE
  p1.price = (
    SELECT
      MAX(price)
    FROM
      products AS p2
    WHERE p2.department = p1.department);


'Print the number of orders for each product'

SELECT
  p1.name,
  (
    SELECT
      COUNT(*)
    FROM
      orders as o1
    WHERE
      o1.product_id = p1.id
  )
FROM
  products AS p1;