-- Basic Wildcard (%)

-- 1. Find all customers whose first name starts with 'J'.
SELECT * 
FROM customers
WHERE first_name LIKE 'J%';

-- 2. Find all customers whose last name ends with 'son'.
SELECT * 
FROM customers
WHERE last_name LIKE '%son';

-- 3. Find all customers whose address contains the word 'Main'.
SELECT * 
FROM customers
WHERE address LIKE '%main%';

-- 4. Find all customers whose phone number starts with '(312)'.
SELECT * 
FROM customers
WHERE phone LIKE '(312%)';

-- 5. Find all customers whose city ends with 'ville'.
SELECT * 
FROM customers
WHERE city LIKE '%ville';

-- Underscore Wildcard (_)

-- 6. Find all customers whose state is exactly 2 characters and starts with 'N'. (e.g., NY, NJ)
SELECT * 
FROM customers
WHERE state LIKE 'N_';

-- 7. Find all customers whose first name is exactly 4 characters long.
SELECT * 
FROM customers
WHERE first_name LIKE '____';

-- 8. Find all customers whose last name has 'a' as the second character.
SELECT * 
FROM customers
WHERE last_name LIKE '_a%';

-- Combined (% and _)

-- 9. Find all customers whose phone number has '555' anywhere in it.
SELECT * 
FROM customers 
WHERE phone LIKE '%555%';	

-- 10. Find all customers whose first name starts with any character but ends with 'e'.
SELECT * 
FROM customers
WHERE first_name LIKE '_%e';

-- 11. Find all customers whose address starts with a number followed by ' Elm'.
SELECT *
FROM customers
WHERE address LIKE '_ Elm%';

-- Negation (NOT LIKE)

-- 12. Find all customers whose city does not contain 'New'.
SELECT * 
FROM customers
WHERE city NOT LIKE '%NEW%';

-- 13. Find all customers whose last name does not start with 'S'.
SELECT * 
FROM customers
WHERE last_name NOT LIKE 'S%';