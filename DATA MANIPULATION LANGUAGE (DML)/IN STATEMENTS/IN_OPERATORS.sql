-- The following SQL statement selects all customers that are located in "VA", "FL" OR "GA":
SELECT * 
FROM customers
WHERE state IN ('VA', 'FL', 'GA');
 
-- The following SQL statement selects all customers that are NOT located in "VA", "FL" OR "GA":
SELECT * 
FROM customers
WHERE state NOT IN ('VA', 'FL', 'GA');

-- The following SQL statement selects all products that have a quantity_in_stock of 6, 90, 94, or 70
SELECT * 
FROM products
WHERE quantity_in_stock IN (6, 90, 94, 70);
