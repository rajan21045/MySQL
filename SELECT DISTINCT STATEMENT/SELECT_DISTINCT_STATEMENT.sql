/*
MySQL SELECT DISTINCT Statement
The MySQL SELECT DISTINCT Statement
The SELECT DISTINCT statement is used to return only distinct (unique) values.

In a table, a column may contain several duplicate values - and sometimes you want to list only the unique values.
The following SQL selects all the distinct (unique) city values from the "students" table:
*/
SELECT DISTINCT city 
FROM students;

/*
SELECT DISTINCT Syntax
SELECT DISTINCT column1, column2, ...
FROM table_name;
*/

/*
SELECT Example Without DISTINCT
If you omit the DISTINCT keyword, the SQL statement returns all the "city" values from all the records of the "students" table
*/
SELECT city FROM Customers;


/*
Count Distinct Values
By using the COUNT() function with the DISTINCT keyword, we can count the number of unique values.

The following SQL counts the number of unique countries in the "Customers" table:
*/

SELECT COUNT(DISTINCT city) FROM students;
