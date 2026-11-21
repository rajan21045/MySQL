/*
The MySQL ORDER BY Keyword
The ORDER BY keyword is used to sort the result-set in ascending or descending order.
The ORDER BY keyword sorts the records in ascending order (ASC) by default.

ORDER BY Syntax
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC; 
*/


-- Sorting customers by first name in descending (Z to A) order
-- ORDER BY DESC
-- To sort the records in descending order, use the DESC keyword.
SELECT *
FROM customers
ORDER BY first_name DESC;

-- Sorting customers primarily by state (A to Z), then by first name (A to Z) within each state
SELECT *
FROM customers
ORDER BY state, first_name;

-- Sorting customers primarily by state (Z to A), then by first name (Z to A) within each state
SELECT *
FROM customers
ORDER BY state DESC, first_name DESC;

-- Selecting first name, last name, and a constant value 10 as 'Points',
-- then sorting by Points (all equal, so effectively sorted by first name A to Z)
SELECT first_name, last_name, 10 AS Points
FROM customers
ORDER BY Points, first_name;