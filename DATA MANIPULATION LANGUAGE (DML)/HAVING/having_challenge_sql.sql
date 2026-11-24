/*
Challenge: HAVING
Test your understanding of MySQL HAVING by completing a small coding challenge.

Instructions
Inside the editor, write one SQL statement that completes the following steps:
Select Country and the number of customers, COUNT(CustomerID), named NumberOfCustomers
Read them from the Customers table, grouped by Country
Keep only the countries with more than 3 customers
The result should show 8 rows and 2 columns.
*/

-- Challenge Link: https://www.w3schools.com/mysql/mysql_challenges_having.asp

-- Write your SQL statement below

SELECT Country, COUNT(CustomerID)AS NumberOfCustomers
FROM Customers GROUP BY Country
HAVING COUNT(*) > 3;

/*
Checklist
✓ Select COUNT(CustomerID) AS NumberOfCustomers
✓ Read FROM Customers, GROUP BY Country
✓ Filter the groups with HAVING COUNT(...) > 3
✓ The query returns the expected result
*/