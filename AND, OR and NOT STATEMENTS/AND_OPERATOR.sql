-- MySQL AND Operator
/*
The MySQL AND Operator
The WHERE clause can contain one or many AND operators.
The AND operator is used to filter records based on more than one condition.
Note: The AND operator displays a record if all the conditions are TRUE.
*/

/*
AND Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
*/
SELECT * FROM
students WHERE
age > 18 AND age <=21;

/*
AND vs. OR
The AND operator displays a record if all the conditions are TRUE.
The OR operator displays a record if any of the conditions are TRUE.
*/
DESC departments;
/*
Combining AND and OR
You can also combine the AND and OR operators.
*/
SELECT * FROM
students WHERE 
marks>30 And (city= "Kathmandu" OR dept_id = 1);