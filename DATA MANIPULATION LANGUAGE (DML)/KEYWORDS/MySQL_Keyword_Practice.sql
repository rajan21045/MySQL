/*
SQL Keywords
SQL keywords are reserved words that have a special meaning in SQL. They are used to perform operations such as creating tables, retrieving data, inserting data, updating data, and deleting data.

Common SQL Keywords
Keyword				Purpose								Example
SELECT				Retrieves data						SELECT * FROM students;
FROM				Specifies the table					SELECT name FROM students;
WHERE				Filters records						SELECT * FROM students WHERE age > 18;
INSERT				Adds new records					INSERT INTO students VALUES (1, 'Ram', 20);
INTO				Specifies where to insert data		INSERT INTO students INTO ...
VALUES				Provides values to insert			INSERT INTO students VALUES (1, 'Ram', 20);
UPDATE				Modifies existing data				UPDATE students SET age = 21;
SET					Specifies values to change			UPDATE students SET age = 21;
DELETE				Deletes records						DELETE FROM students WHERE id = 1;
CREATE				Creates database objects			CREATE TABLE students (...);
ALTER				Changes an existing object			ALTER TABLE students ADD email VARCHAR(100);
DROP				Deletes an object					DROP TABLE students;
ORDER BY			Sorts results						SELECT * FROM students ORDER BY age;
GROUP BY			Groups records						SELECT age, COUNT(*) FROM students GROUP BY age;
HAVING				Filters groups						... GROUP BY age HAVING COUNT(*) > 2;
JOIN				Combines tables						SELECT * FROM students JOIN courses ...;
AND					Combines conditions					WHERE age > 18 AND city = 'Kathmandu';
OR					Allows either condition				WHERE age > 18 OR city = 'Pokhara';
NOT					Negates a condition					WHERE NOT age = 18;
DISTINCT			Removes duplicates					SELECT DISTINCT city FROM students;
AS					Gives an alias						SELECT name AS student_name FROM students;
*/
use collegedb;
DESC students;

-- 1. SELECT — Retrieve data
-- Used to get data from a table.
SELECT * FROM students;
-- Get only specific columns:
SELECT name, marks FROM students;


-- 2. FROM — Specify the table
-- Usually used with SELECT.
SELECT name, age
FROM students;
-- Here, FROM students means get the data from the students table.

-- 3. WHERE — Filter records
SELECT *
FROM students
WHERE marks >= 80;
-- This displays students whose marks are 80 or higher.
-- Another example:
SELECT name, city
FROM students
WHERE city = 'Kathmandu';

-- 4. INSERT — Add new data
-- INSERT is normally used with INTO.
INSERT INTO students
(name, age, gender, marks, city, attendance, dept_id)
VALUES
('Ram', 20, 'Male', 85, 'Kathmandu', 90, 1);
-- This adds a new student.

-- 5. INTO — Specify where data goes
-- Example:
INSERT INTO students
(name, age, gender, marks, city, attendance, dept_id)
VALUES
('Sita', 21, 'Female', 92, 'Pokhara', 95, 2);
-- Here:
-- INSERT INTO students
--           ↑
--       destination table

-- 6. VALUES — Provide values
INSERT INTO students
(name, age, gender, marks, city, attendance, dept_id)
VALUES
('Hari', 19, 'Male', 75, 'Lalitpur', 85, 1);
-- The values correspond to the columns:
-- name        → Hari
-- age         → 19
-- gender      → Male
-- marks       → 75
-- city        → Lalitpur
-- attendance  → 85
-- dept_id     → 1

-- 7. UPDATE — Modify existing data
-- Suppose Ram's marks are actually 88:
UPDATE students
SET marks = 88
WHERE name = 'Ram';
-- Important: Always be careful with UPDATE and WHERE.
-- Without WHERE:
UPDATE students
SET marks = 88;
-- This changes every student's marks to 88.

-- 8. SET — Specify what to change
-- Usually used with UPDATE.
UPDATE students
SET city = 'Bhaktapur'
WHERE student_id = 1;
-- Here:
-- SET city = 'Bhaktapur'
-- means change the student's city.
-- You can update multiple columns:
UPDATE students
SET marks = 90,
    attendance = 95
WHERE student_id = 1;

-- 9. DELETE — Delete records
-- Delete a particular student:
DELETE FROM students
WHERE student_id = 5;
-- This deletes the student whose student_id is 5.
-- Be careful:
DELETE FROM students;
-- This deletes all records from the table.

-- 10. CREATE — Create a database object
-- For example, create another table:
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
-- You can also create a database:
CREATE DATABASE schooldb;