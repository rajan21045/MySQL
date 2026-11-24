/*
MySQL SUM() Function
The SUM() function is used to calculate the total sum of values within a numeric column.

The SUM() function ignores NULL values in the column.

SUM() Syntax
SELECT SUM(column_name)
FROM table_name
WHERE condition;
*/


USE sql_inventory;
SELECT * FROM products;

/*
SUM() Example
The following SQL returns the sum of the unit price in the "products" table:
*/
SELECT SUM(unit_price) AS "Total Price"
FROM products;

/*
Add a WHERE Clause
You can add a WHERE clause to specify conditions.

The following SQL returns the sum of the Quantity field for the product with ProductID = 9, in the "products" table:

Example
*/
SELECT SUM(quantity_in_stock)
FROM products
WHERE product_id = 9;
