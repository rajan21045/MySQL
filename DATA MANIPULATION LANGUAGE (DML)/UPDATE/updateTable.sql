/*
MySQL UPDATE Statement
The MySQL UPDATE Statement
The UPDATE statement is used to update or modify one or more records in a table.

UPDATE Syntax
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. The WHERE clause specifies which record(s) that should be updated. If you omit the WHERE clause, all records in the table will be updated!
*/

SELECT * FROM customers;
/*
UPDATE Table
The following SQL updates the record with Customer ID = 1, with a new contact person AND a new email.
*/
UPDATE customers
SET name= "Rajan Poudel", email="rajanpoudel495@gmail.com"
WHERE id=1;

USE collegedb;
SELECT * FROM students;
/*
UPDATE Multiple Records
The WHERE clause determines which records that will be updated.
The following SQL will update the attendance to 80 for ALL records whose attendance is less than 70:
*/
SET SQL_SAFE_UPDATES = 0;
UPDATE students
SET attendance = 80 
where attendance < 70;

SET SQL_SAFE_UPDATES = 1;
