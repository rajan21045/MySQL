-- Beginner
-- 1. Find students who are older than 20 and have marks greater than 80.
SELECT * FROM
students WHERE age>20 
AND marks >80;

-- 2. Display students who are from Kathmandu and have attendance greater than 90.
SELECT * FROM students
WHERE city = "Kathmandu" AND attendance >90;

-- 3. Find female students who scored more than 75 marks.
SELECT * FROM students
WHERE gender = "Female"
AND marks >75;

-- 4. Display male students whose attendance is at least 80%.
SELECT * FROM students
WHERE gender = "Male"
AND marks >=80;

-- Intermediate
-- 5. Find students whose age is between 18 and 22 and whose marks are greater than 70.
SELECT * FROM students
WHERE age BETWEEN 18 AND 22
AND marks > 70;

-- 6. Display students from Pokhara who have attendance greater than 85 and marks above 80.
SELECT * FROM students
WHERE city = "Pokhara" AND
marks >=80;

-- 7. Find students in department 2 whose marks are below 50.
SELECT * FROM students 
WHERE dept_id = 2
AND marks >50;

-- Using JOIN + AND
-- 8. Find students who belong to the IT department and have marks greater than 80.
SELECT * FROM students s
JOIN departments d
ON s.dept_id = d.dept_id
WHERE d.dept_name = "IT" AND marks >80;

-- 9. Display students from the Management department who have attendance above 90.
SELECT s.name, s.attendance, d.dept_name
FROM students s
JOIN departments d
ON s.dept_id = d.dept_id
WHERE d.dept_name = 'Management'
AND s.attendance > 90;

-- 10. Find female students in the Science department who scored more than 85.
SELECT s.name, s.gender, s.marks, d.dept_name
FROM student s
JOIN departments d
ON s.dept_id = d.dept_id
WHERE s.gender = 'Female'
AND d.dept_name = 'Science'
AND s.marks > 85;

/*
These below exercises cover using AND with:

Multiple conditions in WHERE
Numeric comparisons (>, <, >=)
Text comparisons (city, gender)
BETWEEN
JOIN with the departments table
*/

-- Q. Find students whose marks are greater than 90 and attendance is above 95.
SELECT * FROM students
WHERE marks >=90 AND attendance >=95;

-- Q. Display male students from Kathmandu.
SELECT * FROM students
WHERE gender = "Male" AND 
city = "Kathmandu";

-- Q. Find students aged 21 or above and belonging to department 3.
SELECT * FROM students
WHERE age>=21 AND 
dept_id =3;

-- Q. Display female students whose attendance is below 75 and marks are below 60.
SELECT * FROM students
WHERE gender = "Female" AND 
attendance<75 AND
marks <60;

-- Q. Find students from Butwal who scored more than 70.
SELECT * FROM students
WHERE city = "Kathmandu" AND
marks > 70;

-- Q. Display students from the IT department whose age is less than 20.
SELECT s.name, s.age, d.dept_name
FROM students s
JOIN departments d
ON s.dept_id = d.dept_id
WHERE d.dept_name = 'IT'
AND s.age < 20;

-- Q. Find students from the Science department with attendance greater than 85 and marks greater than 80.
SELECT * FROM students s
JOIN departments d
ON s.dept_id = d.dept_id
WHERE d.dept_name = "Science" AND
marks >80 AND attendance >85;

-- Q. Display students from the Management department who live in Pokhara.
SELECT * FROM students s
JOIN departments d
ON s.dept_id = d.dept_id
WHERE d.dept_name = "Management" AND
s.city = "Pokhara";

-- Q. Find students whose city is Kathmandu, attendance is above 90, and marks are above 85.
SELECT * FROM students
WHERE city ="Kathmandu" AND 
attendance >90 AND marks >85;

-- Q. Display students whose age is 20, gender is Female, and department is Science.
SELECT * FROM students s
JOIN departments d
ON s.dept_id = d.dept_id
WHERE s.age > 20 AND 
s.gender = "Female" AND 
d.dept_name = "Science"; 