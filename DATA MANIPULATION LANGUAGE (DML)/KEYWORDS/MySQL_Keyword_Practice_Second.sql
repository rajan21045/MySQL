/*
11. ALTER — Modify an existing table
Suppose you want to add an email column:
*/
ALTER TABLE students
ADD email VARCHAR(100);
/*
Now your table has:
student_id
name
age
gender
marks
city
attendance
dept_id
email
You can also modify a column:
*/
ALTER TABLE students

MODIFY marks DECIMAL(5,2);



/*
12. DROP — Delete a database object
Delete a table:
*/
DROP TABLE students;
/*This removes the entire table and its data.
Delete a database:
*/
DROP DATABASE collegedb;
-- So be very careful with DROP.



/*
13. ORDER BY — Sort results
Sort students by marks from lowest to highest:
*/
SELECT name, marks
FROM students
ORDER BY marks;

-- For highest to lowest:
SELECT name, marks
FROM students
ORDER BY marks DESC;

-- For lowest to highest:
SELECT name, marks
FROM students
ORDER BY marks ASC;

-- ASC = ascending
-- DESC = descending

-- 14. GROUP BY — Group records
-- Suppose you want to know how many students are in each city:
SELECT city, COUNT(*)
FROM students
GROUP BY city;
-- Example result:
-- city          COUNT(*)
-- ----------------------
-- Kathmandu        5
-- Pokhara          3
-- Lalitpur         4
-- Bhaktapur        2
-- You can also calculate average marks by city:
SELECT city, AVG(marks)
FROM students
GROUP BY city;

-- 15. HAVING — Filter groups
-- Suppose you only want cities having more than 2 students:
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city
HAVING COUNT(*) > 2;
-- Difference between WHERE and HAVING

-- WHERE filters individual rows:
SELECT *
FROM students
WHERE marks >= 80;

-- HAVING filters groups:
SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) > 2;



-- 16. JOIN — Combine tables
-- Suppose you have this departments table:
-- dept_id    dept_name
-- --------------------
-- 1          Computer
-- 2          Management
-- 3          Science
-- Your students table has dept_id, so we can join them:
SELECT students.name, departments.dept_name
FROM students
JOIN departments
ON students.dept_id = departments.dept_id;
-- Example result:
-- name       dept_name
-- --------------------
-- Ram        Computer
-- Sita       Management
-- Hari       Computer



-- 17. AND — Both conditions must be true
-- Find students who have marks ≥ 80 and attendance ≥ 90:
SELECT *
FROM students
WHERE marks >= 80
AND attendance >= 90;
-- Both conditions must be satisfied.




-- 18. OR — At least one condition must be true
-- Find students from Kathmandu or Pokhara:
SELECT *
FROM students
WHERE city = 'Kathmandu'
OR city = 'Pokhara';

-- A student satisfying either condition is returned.


-- 19. NOT — Reverse a condition
-- Find students who are not from Kathmandu:
SELECT *
FROM students
WHERE NOT city = 'Kathmandu';
-- You can also write:
SELECT *
FROM students
WHERE city <> 'Kathmandu';



-- 20. DISTINCT — Remove duplicates
-- Suppose many students are from Kathmandu, Pokhara, etc.
SELECT DISTINCT city
FROM students;
-- Instead of:
-- Kathmandu
-- Kathmandu
-- Pokhara
-- Kathmandu
-- Lalitpur
-- Pokhara

-- you get:
-- Kathmandu
-- Pokhara
-- Lalitpur




-- 21. AS — Give an alias
-- You can give a column a temporary name.
SELECT name AS student_name
FROM students;
-- Instead of the column heading:
-- name
-- you get:
-- student_name
-- You can also use it with calculations:

SELECT name, marks AS student_marks
FROM students;
-- AS with tables
SELECT s.name, s.marks
FROM students AS s;
-- Here s is a short name for students.