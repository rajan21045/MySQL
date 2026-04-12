-- MySQL COUNT() Function

/*
MySQL COUNT() Function
The COUNT() function returns the number of rows that matches a specified criterion.

COUNT() Syntax
SELECT COUNT([DISTINCT] column_name | *)
FROM table_name
WHERE condition;
The behavior of COUNT() depends on the argument used within the parentheses:

COUNT(*) - Counts the total number of rows in a table (including NULL values).
COUNT(columnname) - Counts all non-null values in the column.
COUNT(DISTINCT columnname) - Counts only the unique, non-null values in the column.
*/

-- Using COUNT(*)
-- The following SQL uses COUNT(*), and counts the total number of rows in the "Products" table (will include NULL values):
SELECT COUNT(*)
FROM students;

/*
Using COUNT(column_name)
The COUNT(column_name) counts all non-null values in the specified column.
The following SQL counts all non-null values of the "marks" column:
*/
SELECT COUNT(marks) 
FROM students;

/*
Using COUNT(DISTINCT column_name)
You can ignore duplicates by using the DISTINCT keyword.
The COUNT(DISTINCT column_name) counts only the unique, non-null values in the column.
If DISTINCT is specified, rows with the same value for the specified column will be counted as one.
The following SQL counts the unique, non-null values of the "city" column:
*/
SELECT COUNT( DISTINCT city) 
FROM students;

/*
Add a WHERE Clause
You can add a WHERE clause to specify conditions:

Example
Count the number of products where salary is higher than 20:
*/
SELECT COUNT(employee_id)
FROM employees
WHERE salary > 3000;