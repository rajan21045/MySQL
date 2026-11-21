-- SQL Comparison Operators
/*
Operator	Description
=			Equal to	
>			Greater than	
<			Less than	
>=			Greater than or equal to	
<=			Less than or equal to	
<>			Not equal to
*/
USE collegedb;

-- Equal to
SELECT * FROM students
WHERE student_id = 4;

-- Greater Than
SELECT * FROM students
WHERE student_id > 4;

-- Less Than
SELECT * FROM students
WHERE student_id < 4;

-- Greater Than Or Equal To
SELECT * FROM students
WHERE student_id >=6;

-- Less Than Or Equal To
SELECT * FROM students
WHERE student_id <= 8;

-- Not Equal To
SELECT * FROM students
WHERE student_id <> 8;