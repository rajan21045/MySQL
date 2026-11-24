/*
The MySQL DELETE Statement
The DELETE statement is used to delete existing records in a table.

DELETE Syntax
DELETE FROM table_name WHERE condition;
Note: Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. The WHERE clause specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted!
*/

SELECT * FROM students;
/*
SQL DELETE Example
The following SQL deletes the student_id 18 from the "students" table:
*/

DELETE FROM students WHERE student_id = 18;

/*
Delete All Records
It is possible to delete all records in a table, without deleting the table. This means that the table structure, attributes, and indexes will be intact.
DELETE FROM table_name;

The following SQL deletes ALL records in the "students" table, without deleting the table:
Example
*/
DELETE FROM students;
/*
Delete a Table
To delete the table completely, use the DROP TABLE statement:

DROP TABLE table_name;
The following SQL drops the entire "students" table:

Example
*/
DROP TABLE students;