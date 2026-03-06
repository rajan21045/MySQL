-- Return products with 
-- quantity in stock equal to 49, 38, 79 ( IT IS THE EXECRISE FROM PROGRAMMING WITH MOSH YOUTUBE VIDEO NAMED 'SQL Course for Beginners [Full Course]')
USE sql_store;
-- Using sql_store for this SQL statement because of the available of product's details to find
SELECT * 
FROM products
WHERE quantity_in_stock IN (49, 38, 79);

-- THE FOLLOWING SQL STATEMENT EXECERISE IS FROM RAJAN POUDEL
-- The following SQL statement selects all students that have a attendance of 90, 50, 70
USE collegeDB;
SELECT *
FROM students
WHERE attendance IN (90, 50, 70);

-- The following SQL statement selects all students that have a city of Pokhara, Kathmandu
SELECT *
FROM students
WHERE city IN ('Pokhara', 'Kathmandu');