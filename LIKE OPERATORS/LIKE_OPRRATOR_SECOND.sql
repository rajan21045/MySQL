/*
In this tutorial, i am going to show you how to retrieve rows that match a string pattern, for example,
let's say we only want to get to customers who's last name start with b.
*/


SELECT * 
FROM customers
WHERE last_name LIKE 'b%';


SELECT * 
FROM customers
WHERE last_name LIKE 'brush%';

SELECT * 
FROM customers
WHERE last_name LIKE '%b%';

SELECT * 
FROM customers
WHERE last_name LIKE '%y';

SELECT * 
FROM customers
WHERE last_name LIKE '_y';


SELECT * 
FROM customers
WHERE last_name LIKE '_____y';


SELECT * 
FROM customers
WHERE last_name LIKE 'b____y';

