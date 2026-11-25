/*
MAX() and MIN() of Two or More Values
We can also find the highest or lowest value from two or more values using the MAX() and MIN() function. For example,

*/
-- returns 50 as highest
SELECT MAX(20, 30, 50) as highest;


-- returns 20 as lowest
SELECT MIN(20, 30, 50) as lowest;

/*
MAX() and MIN() with HAVING
Let's see how we can use MAX() and MIN() function with HAVING:
*/
SELECT *
FROM Customers
GROUP BY country
HAVING MAX(age);
-- Here, the SQL command returns the maximum age in each country from the Customers table.