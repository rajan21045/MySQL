/*
 
 MySQL COUNT() Code Challenge
 
 Challenge: COUNT()
 Test your understanding of MySQL COUNT() by completing a small coding challenge.
 
 Instructions
 Inside the editor, write one SQL statement that completes the following steps:
 Use COUNT() to count the rows and name the result TotalCustomers
 Read it from the Customers table
 Only include rows where Country is 'Germany'
 The result should show 1 row and 1 column.
 */
-- Write your SQL statement below
SELECT COUNT(*) AS TotalCustomers
FROM Customers
WHERE Country = "Germany";

-- 🎉 Great job! You nailed it!

/*
Checklist
✓ Use COUNT() and name the result TotalCustomers
✓ Read it FROM Customers
✓ Filter with WHERE Country
✓ The query returns the expected result
*/