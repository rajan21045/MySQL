-- We use WHERE clause to filter the data
-- For example, let's say we only want to get the customers withpoints greater than 3000
SELECT * 
FROM customers
WHERE points > 3000;
-- When we execute this query, the query exectution engine in MySQL is going to iterate over all the customers in the customers table. 
-- For each customers it's going to evluate this condition if this condition is true, it will return that customer in the result set. 

-- So, > is what we call the greater than operator which is one of the comparison operators in SQL. Let me show you the completenessof comparison operators, so, we have >, >=, <, <=, =, !=, <>

-- =
SELECT * 
FROM customers
WHERE state = 'VA';

-- !=
SELECT * 
FROM customers
WHERE state != 'VA';

-- <>
SELECT * 
FROM customers
WHERE state <> 'VA';

-- >
SELECT * 
FROM customers
WHERE birth_date > '1990-01-01';