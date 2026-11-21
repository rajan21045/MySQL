/*
The MySQL LIMIT Clause
The LIMIT clause is used to limit the number of records to return.

The LIMIT clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.

LIMIT Syntax
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;
*/

/*
MySQL LIMIT Examples
The following SQL selects the first three records from the "sql_store" table:
*/
SELECT * 
FROM customers
LIMIT 3;

/*
What if we want to select records 4 - 6 (inclusive)?
MySQL provides a way to handle this: by using OFFSET.
The following SQL says "return only 3 records, start on record 4 (OFFSET 3)":
*/
SELECT * 
FROM customers
LIMIT 3 OFFSET 3; 

/*
LIMIT with a WHERE CLAUSE
The following SQL selects the first three records from the "Customers" table, where Country is "Germany":
*/
SELECT * 
FROM students
WHERE city='Kathmandu'
LIMIT 3;

/*
LIMIT with an ORDER BY CLAUSE
The following SQL sorts the customers by city before returning the first three records of the sorted result:
*/
SELECT * 
FROM students
ORDER BY city
LIMIT 3;