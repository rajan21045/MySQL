-- BETWEEN OPERATORS

-- Without Between operators, we have to do the following sql query statement to get the dataset where customers who have points greater or equal to 1000 and less than or equal to 3000
USE sql_store;
SELECT * 
FROM customers 
WHERE points >= 1000 AND points<= 3000;

-- Now using BETWEEN operators, it will make your code shorter and cleaner.
-- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
-- The BETWEEN operator is inclusive: begin and end values are included.

-- BETWEEN Syntax
-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name BETWEEN value1 AND value2;

-- The following SQL statement selects all customers who have a points between 1000 and 3000:
SELECT * 
FROM customers 
WHERE points BETWEEN 1000 AND 3000;

-- To display the customers outside the range of the previous example, use NOT BETWEEN:
SELECT * 
FROM customers 
WHERE points NOT BETWEEN 1000 AND 3000;

-- BETWEEN with IN Example
-- The following SQL statement selects all products with a unit_price between 1 and 3. In addition; do not show products with a quantity_in_stock of 14,90, or 6:
SELECT * FROM products
WHERE unit_price BETWEEN 1 AND 3
AND quantity_in_stock NOT IN (14,90,6);

-- BETWEEN Text Values Example
-- The following SQL statement selects all products with a name between "Carnarvon Tigers" and "Mozzarella di Giovanni":
SELECT * FROM products
WHERE name BETWEEN 'Pork - Bacon,back Peameal' AND 'Longan'
ORDER BY name;