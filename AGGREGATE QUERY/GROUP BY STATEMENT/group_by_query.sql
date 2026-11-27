/*
 The MySQL GROUP BY Statement
 The GROUP BY statement is used to group rows that have the same values into summary rows, like "Find the number of customers in each country".
 
 The GROUP BY statement is almost always used in conjunction with aggregate functions, like COUNT(), MAX(), MIN(), SUM(), AVG(), to perform calculations on each group.
 
 GROUP BY Syntax
 SELECT column1, aggregate_function(column2), column3, ...
 FROM table_name
 WHERE condition
 GROUP BY column1, column3
 ORDER BY column_name;
 */
/*
 MySQL GROUP BY Examples
 The following SQL returns the number of customers in each country:
 
 */
SELECT Country,
    COUNT(CustomerID) AS "Number of Customers"
FROM customers
GROUP BY Country;
select *
from customers;
/*
 The following SQL returns the number of customers in each country, sorted from high to low:
 Example
 */
SELECT Country,
    COUNT(CustomerID) AS "Number of Customers"
FROM customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;