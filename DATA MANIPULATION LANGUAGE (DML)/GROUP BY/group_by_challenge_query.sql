-- MySQL GROUP BY Code Challenge
/*
Challenge: GROUP BY
Test your understanding of MySQL GROUP BY by completing a small coding challenge.

Instructions
Inside the editor, write one SQL statement that completes the following steps:
Select Country and the number of customers, COUNT(CustomerID), named NumberOfCustomers
Read them from the Customers table
Group the rows by Country
The result should show 21 rows and 2 columns.
*/

-- Challenge Link: https://www.w3schools.com/mysql/mysql_challenges_groupby.asp

-- Write your SQL statement below

SELECT Country, Count(CustomerID) AS NumberOfCustomers
FROM Customers
GROUP BY Country;
-- 🎉 Great job! You nailed it!

/*
Checklist
✓ Select COUNT(CustomerID) AS NumberOfCustomers
✓ Read them FROM Customers
✓ GROUP BY Country
✓ The query returns the expected result
*/