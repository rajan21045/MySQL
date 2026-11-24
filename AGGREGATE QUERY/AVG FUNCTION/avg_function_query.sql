/*
MySQL AVG() Function
The AVG() function returns the average value of a numeric column.

The AVG() function ignores NULL values in the column.

AVG() Syntax
SELECT AVG(column_name)
FROM table_name
WHERE condition;
*/

/*
AVG() Example
The following SQL finds the average price of all products:
*/
SELECT AVG(unit_price)
FROM products;  

/*
Add a WHERE Clause
You can add a WHERE clause to specify conditions:

Example
Return the average price of products in category 1:
*/
SELECT AVG(unit_price)
FROM products
WHERE product_id = 1;

/*
Higher Than Average
To list all records with a higher price than average, we can use the AVG() function in a sub query:

Example
Return all products with a higher price than the average price:

SELECT * FROM Products
WHERE price > (SELECT AVG(price) FROM Products);
*/

SELECT * FROM
products WHERE 
unit_price > (SELECT AVG(unit_price) FROM products);