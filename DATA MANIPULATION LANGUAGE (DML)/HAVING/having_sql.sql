-- MySQL HAVING Clause
/*
The MySQL HAVING Clause
The HAVING clause is used to filter the results of a GROUP BY query based on aggregate functions.

Unlike the WHERE clause, which filters individual rows before grouping, the HAVING clause filters groups after the aggregation has been performed.

HAVING Syntax
SELECT column1, aggregate_function(column2), column3, ...
FROM table_name
WHERE condition
GROUP BY column1, column3
HAVING condition -- The condition on grouped data
ORDER BY column_name;

*/

-- MySQL HAVING ExamplesThe following SQL returns the number of students in each city - but only include city with more than 5 students:
USE collegedb;
SELECT city, COUNT(*) AS "Total Student"
FROM students
WHERE attendance > 90
GROUP BY city
HAVING COUNT(*) > 1;

-- The following SQL returns the number of students in each City, sorted from high to low (and only include city with more than 5 students):
USE collegedb;
SELECT city, COUNT(*) AS "Total Student"
FROM students
WHERE attendance > 90
GROUP BY city
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;