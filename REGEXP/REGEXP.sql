-- Select all customers where last_name contains 'field' anywhere
SELECT * 
FROM customers
WHERE last_name LIKE '%field%';


-- REGEXP patterns explanation:
-- ^  -> beginning of string
-- $  -> end of string
-- |  -> logical OR
-- [abcd] -> any one character: a, b, c, or d
-- [a-h]  -> any character from a to h


-- Matches last_name that STARTS with 'field'
SELECT * 
FROM customers
WHERE last_name REGEXP '^field';


-- Matches last_name that ENDS with 'field'
SELECT * 
FROM customers
WHERE last_name REGEXP 'field$';


-- Matches last_name containing 'field' OR 'mac'
SELECT * 
FROM customers
WHERE last_name REGEXP 'field|mac';


-- Matches last_name containing 'field' OR 'mac' OR 'rose'
SELECT * 
FROM customers
WHERE last_name REGEXP 'field|mac|rose';


-- Matches:
-- last_name starting with 'field'
-- OR containing 'mac'
-- OR containing 'rose'
-- (NOTE: ^ applies ONLY to 'field' here)
SELECT * 
FROM customers
WHERE last_name REGEXP '^field|mac|rose';


-- Matches last_name containing letter 'e' anywhere
SELECT * 
FROM customers
WHERE last_name REGEXP 'e';


-- Matches last_name where:
-- first character is either g, i, or m
-- followed immediately by 'e'
-- Examples: 'george', 'merry', 'ice'
SELECT * 
FROM customers
WHERE last_name REGEXP '[gim]e';