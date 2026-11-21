-- Basic Level
-- 1. Find all students whose age is NULL.
SELECT *
FROM students
WHERE age IS NULL;

-- 2. Display students whose city is NOT NULL.
SELECT *
FROM students
WHERE city IS NOT NULL;

-- 3. Get records where marks are NULL.
SELECT *
FROM students
WHERE marks IS NULL;

-- 4. Show students whose attendance is NOT NULL.
SELECT *
FROM students
WHERE attendance IS NOT NULL;

-- 5. Find students where gender is NULL.
SELECT *
FROM students
WHERE gender IS NULL;

-- Intermediate Level
-- 6. Retrieve students whose age and marks are both NULL.
SELECT *
FROM students
WHERE age AND marks IS NULL;

-- 7. Find students where city is NULL but attendance is NOT NULL.
SELECT *
FROM students
WHERE city IS NULL AND attendance IS NOT NULL;

-- 8. Display students whose marks are NOT NULL but less than 50.
SELECT *
FROM students
WHERE marks IS NOT NULL AND marks <50;

-- 9. Get all students where dept_id is NULL.
SELECT *
FROM students
WHERE dept_id IS NULL;

-- 10. Find students whose name is NOT NULL but gender is NULL.
SELECT *
FROM students
WHERE name IS NOT NULL AND gender IS NULL;

-- Advanced Level
-- 11. Count how many students have NULL marks.
SELECT COUNT(*) AS total_null_marks
FROM students
WHERE marks IS NULL;

-- 12. Count students where attendance is NOT NULL.
SELECT COUNT(*) AS total_not_null_attendance
FROM students 
WHERE attendance IS NOT NULL;

-- 13. Find students where more than one column is NULL (e.g., age, marks, city).
SELECT *
FROM students
WHERE 
    (IF(age IS NULL, 1, 0) +
     IF(marks IS NULL, 1, 0) +
     IF(city IS NULL, 1, 0)) > 1;

-- 14. Retrieve students whose dept_id is NULL and marks > 60.
SELECT *
FROM students
WHERE dept_id IS NULL AND marks > 60;

-- 15. Find students where all optional fields are NULL (age, gender, marks, city, attendance, dept_id).
SELECT *
FROM students
WHERE 
    (IF(age IS NULL, 1, 0) +
     IF(gender IS NULL, 1, 0) +
     IF(marks IS NULL, 1, 0) +
     IF(city IS NULL, 1, 0) +
     IF(attendance IS NULL, 1, 0)+
	 IF(dept_id IS NULL, 1, 0)) > 1;
     
-- Logical / Real-world Scenarios
-- 16. Find students who haven’t provided their city (NULL).
SELECT *
FROM students
WHERE city IS NOT NULL;

-- 17. Get students who have not been assigned to any department (dept_id NULL).
SELECT *
FROM students
WHERE dept_id IS NULL;

-- 18. Find students whose marks are missing but attendance is available.
SELECT *
FROM students
WHERE marks IS NULL AND attendance IS NOT NULL;

-- 19. Display students who have complete data (no NULL values in any column except auto_increment id).
SELECT *
FROM students
WHERE 
    name IS NOT NULL AND
    age IS NOT NULL AND
    gender IS NOT NULL AND
    marks IS NOT NULL AND
    city IS NOT NULL AND
    attendance IS NOT NULL AND
    dept_id IS NOT NULL;

-- 20. Find students whose either age OR marks is NULL.
SELECT *
FROM students
WHERE age IS NULL OR marks IS NULL;