SELECT GREATEST(200, 20, 10) '200'

SELECT name, weight, GREATEST(30, 2 * weight) FROM products;



SELECT LEAST(1000, 20, 50, 100) '20'

SELECT name, price, LEAST(price * 0.5, 400) FROM products;