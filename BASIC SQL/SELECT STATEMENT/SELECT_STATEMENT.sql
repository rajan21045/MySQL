-- " USE " is a keyword in the SQL language. 
-- SQL is not a case sensitive language and that's means we can use upper case or lower case characters, it doesn't really matter, but as a best practice, we should capitalize the SQL keywords and use lower case characters for everthing else.

-- This "USE" statement is used to select the database that we want to work on.
USE sql_store;

-- SELECT Syntax
-- SELECT column1, column2, ...
-- FROM table_name;
-- Here, column1, column2, ... are the field names of the table you want to select data from. If you want to select all the fields available in the table, use the following syntax:

-- The SELECT statement is used to select data from a database.
SELECT * 
from customers;

-- This SELECT statement select ony one customer's details whose customer_id is 1 from Table named customers
SELECT * 
FROM customers
WHERE customer_id = 1;

--  This statement sort the details of the customers from table named custoners 
SELECT * 
from customers
ORDER BY first_name;

-- This SELECT Statement only select first and last name from the Table named customers
SELECT first_name, last_name 
FROM customers;

-- If you want to select last name at first and first name at last then we can do that also by using following query:
SELECT last_name, first_name 
FROM customers;

-- If you want to select fist name, last name with new column by using following query;
-- Lets get the points for each customer.
-- The points for each customer which are calculated based on their shoppping.
SELECT 
	first_name, 
	last_name, 
	points
FROM customers;

-- Now let's say we want to get these points and put them in a mathematical formula to calculate the discount that we can give to each customer.
-- So here we can use an arthmetic expressions, that's points plus ten
SELECT 
	first_name, 
    last_name, 
    points, 
    points + 10 -- This is an arithmetic expression (points + 10)
FROM customers;

SELECT 
	first_name, 
    last_name, 
    points, 
    points * 10 + 100
FROM customers;

SELECT 
	first_name, 
    last_name, 
    points, 
    (points + 10) * 100 
FROM customers;

-- (points + 10) * 100 That doesn't quit make sense you want to have a clear descriptive name, so we can give this column an alias using the as keyword.
-- so as and then we give it a name like discount_factor
SELECT 
	first_name, 
    last_name, 
    points, 
    (points + 10) * 100 AS discount_factor
FROM customers;

-- if you want to have a space in the column name, you need to surround it with an quotes, either single or double quote
SELECT 
	first_name, 
    last_name, 
    points, 
    (points + 10) * 100 AS 'discount factor'
FROM customers;

-- If you want the unique column then we can use the distinct keyword. this keyword remove duplicate and give us unique data.
SELECT DISTINCT state FROM customers;

SELECT 1,2;