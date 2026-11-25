/*
 SQL HAVING Clause
 In this tutorial, you will learn about the SQL HAVING clause with the help of examples.
 
 The SQL HAVING clause is used if we need to filter the result set based on aggregate functions such as MIN() and MAX(), SUM() and AVG(), and COUNT().
 
 Example
 */
-- select customers with the same first name based on their age count 
USE college;
SELECT COUNT(Age) AS Count,
    Name
FROM student
GROUP BY Name
HAVING COUNT(Age) > 1;
/*
 Here, the SQL command
 counts the age of each row and groups them by first_name
 returns the result set if the count of age is greater than 1 (thus filtering out customers with the same first_name)
 */
/*
 SQL HAVING Syntax
 The syntax of the SQL HAVING clause is:
 
 SELECT AggFunc(column), extra_columns
 FROM table
 GROUP BY target_column
 HAVING condition
 
 Here,
 AggFunc(column) refers to any aggregate function applied to a column
 extra_columns are other extra columns to filter
 GROUP BY groups the data by target_column
 HAVING condition compares the column to certain conditions that require filtering
 */
-- Example: SQL HAVING
-- select the count of customer ids greater than one and their corresponding country 
USE sales;
SELECT COUNT(CustomerID),
    Country
FROM customers
GROUP BY Country
HAVING COUNT(CustomerID) > 1;
/*
 Here, the SQL command:
 1. counts the number of rows by grouping them by country
 2. returns the result set if their count is greater than 1.
 */
/*
 Note: The HAVING clause was introduced because the WHERE clause does not support aggregate functions. Also, GROUP BY must be used before the HAVING clause. To learn more, visit SQL GROUP BY.
 */
/*
 SQL HAVING vs. WHERE
 HAVING Clause																WHERE Clause
 The HAVING clause checks the condition on a group of rows.					The WHERE clause checks the condition on each individual row.
 HAVING is used with aggregate functions.									The WHERE clause cannot be used with aggregate functions.
 The HAVING clause is executed after the GROUP BY clause.					The WHERE clause is executed before the GROUP BY clause.
 */
/*
 Let's take a look at an example,
 
 We can write a WHERE clause to filter out rows where the value of amount in the Orders table is less than 500:
 */
SELECT customer_id,
    amount
FROM Orders
WHERE amount < 500;
-- But with the HAVING clause, we can use an aggregate function like SUM to calculate the sum of amounts in the order table and get the total order value of less than 500 for each customer:
SELECT customer_id,
    SUM(amount) AS total
FROM Orders
GROUP BY customer_id
HAVING SUM(amount) < 500;