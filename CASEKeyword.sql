SELECT 
	name, price,
  CASE
  	WHEN price > 600 THEN 'High'
    WHEN price > 300 THEN 'Medium'
    ELSE 'Cheap'
  END
 FROM products;