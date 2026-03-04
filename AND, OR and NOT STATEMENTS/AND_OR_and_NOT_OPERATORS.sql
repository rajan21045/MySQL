-- The MySQL AND, OR and NOT Operators
-- The WHERE clause can be combined with AND, OR, and NOT operators.
-- AND Syntax
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition1 AND condition2 AND condition3 ...;

-- OR Syntax
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition1 OR condition2 OR condition3 ...;

-- NOT Syntax
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE NOT condition;

-- In this query, i am going to show you how to combine multiple search conditions when filtering data. 
-- Let's say you want to get all the customers that were born after 1990-01-01, who also happen to have more than 1000 points.
-- AND OPERATOR
SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' 
AND points > 1000;

SELECT * 
FROM customers
WHERE birth_date < '1990-01-01'
AND points <1000;

-- So we OR operator, atleast one of these conditions is true, that row will be returned in the result set.  
SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' 
OR points > 1000;

SELECT * 
FROM customers 
WHERE points < 1000 
OR state = 'VA';

-- NOT
SELECT * 
FROM customers 
WHERE NOT state = 'VA';

-- Combining AND, OR and NOT
-- You can also combine the AND, OR and NOT operators.
SELECT * 
FROM customers
WHERE points > 1000 AND 
(state = 'VA' OR state = '251 Springs Junction');