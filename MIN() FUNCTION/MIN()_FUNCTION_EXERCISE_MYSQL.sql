-- Level 1 (Single Table) 

-- 1. Find the minimum marks scored by any student.
SELECT MIN(marks) AS LOWEST_MARKS FROM students;

-- 2. Find the minimum age of all students.
SELECT MIN(age) AS YOUNGEST_PERSON FROM students;

-- 3. Find the minimum attendance among all students.
SELECT MIN(attendance) AS LOWEST_ATTENDANCE FROM students;

-- 4. Find the lowest monthly hostel fee.
SELECT MIN(monthly_fee) AS LOWEST_FEE FROM hostel;

-- 5. Find the smallest bed number in the hostel.
SELECT MIN(bed_no) AS SMALLEST_BED_NUMBER FROM hostel;

-- Level 2 (Using WHERE)

-- 6. Find the minimum marks of female students.
SELECT MIN(marks) AS MINIMUM_MARKS_OF_A_FEMALE_STUDENT 
FROM students WHERE gender = 'Female';

-- 7. Find the minimum attendance of students from Kathmandu.
SELECT MIN(attendance) AS MINIMUM_ATTENDACE_FROM_KATHMANDU 
FROM students WHERE city = 'Kathmandu';

-- 8. Find the minimum age of male students.
SELECT MIN(age) AS MIN_AGE FROM students
WHERE gender = 'Male';

-- 9. Find the minimum monthly fee in Everest Hostel.
SELECT MIN(monthly_fee) AS LOWEST_FEE 
FROM hostel WHERE hostel_name = 'Everest Hostel';

-- 10. Find the minimum marks of students whose attendance is greater than 80.
SELECT MIN(marks) AS LOWEST_MARKS 
FROM students WHERE attendance >80;

-- Level 3 (Using JOIN)

-- 11. Find the minimum marks of students in the IT department.
-- Hint: Join students and departments.
SELECT MIN(s.marks) AS MINIMUM_MARKS FROM students s 
JOIN departments d
ON s.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

-- 12. Find the minimum age of students in the Science department.
SELECT MIN(s.age)  AS MINIMUM_AGE FROM students s 
JOIN departments d 
ON s.dept_id = d.dept_id
WHERE d.dept_name = 'Science';

-- 13. Find the lowest hostel fee paid by students in the Management department.
-- Hint: Join three tables:
-- students
-- departments
-- hostel
SELECT MIN(h.monthly_fee) AS lowest_fee
FROM students s
JOIN departments d
ON s.dept_id = d.dept_id
JOIN hostel h
ON s.student_id = h.student_id
WHERE d.dept_name = 'Management';

-- 14. Find the minimum attendance of students living in Himalaya Hostel.
SELECT MIN(attendance) FROM students s
JOIN hostel h
ON s.student_id = h.student_id
WHERE hostel_name = 'Himalaya Hostel';

-- 15. Find the minimum marks of students staying in Block A.
SELECT MIN(s.marks) AS LOWEST_MARKS
FROM students s
JOIN hostel h ON s.student_id = h.student_id
WHERE h.block = 'A';

-- Challenge Questions
-- Q. Find the name and department of the youngest student.
SELECT s.name, d.dept_name FROM students s
JOIN departments d
ON s.dept_id= d.dept_id
WHERE s.age = (SELECT MIN(age) FROM students);