/*
Get the customers whose
	first names are ELKA or AMBUR
    last names end with EY OR ON
    last name start with MY or constains SE
    last names contain B followed by R or U 
*/

-- first names are ELKA or AMBUR
SELECT *
FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR';

-- last names end with EY OR ON
SELECT *
FROM customers
WHERE last_name REGEXP '(EY|ON)$';

-- last name start with MY or constains SE
SELECT *
FROM customers
WHERE last_name REGEXP '^MY|SE';

-- last names contain B followed by R or U 
SELECT *
FROM customers
WHERE last_name REGEXP 'B[ru]';