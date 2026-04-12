-- Beginner
-- Q. Count the total number of students enrolled.
SELECT COUNT(*)
FROM students;

-- Q. Count the total number of customers registered in the store.
SELECT COUNT(*) AS total_customers
FROM sql_store.customers;

-- Q. How many customers have provided their phone number? (phone is nullable)
SELECT COUNT(*)
FROM customers
WHERE phone IS NOT NULL;

-- Q. How many students have their marks recorded? (marks is nullable)
SELECT COUNT(marks) 
AS students_with_marks
FROM students
WHERE marks IS NOT NULL;

-- Q. How many distinct states do the customers come from?
SELECT COUNT( DISTINCT state)
AS total_distinct_state
FROM customers;

-- Q. How many distinct cities do students come from?
SELECT COUNT( DISTINCT city)
AS distinct_cities
FROM students;

-- Intermediate
-- Q. Count the number of students in each dept_id. Include students who have no dept assigned.
SELECT COUNT(dept_id) 
AS students_dept_id
FROM students;

-- Q. Count the number of customers per state. Order by customer count descending.
SELECT state, COUNT(customer_id) 
FROM customers
GROUP BY state
ORDER BY state desc;

-- Q. Count male and female students separately. (gender column may be NULL — don't count those)
SELECT gender, COUNT(*) AS cnt
FROM collegedb.students
WHERE gender IS NOT NULL
GROUP BY gender;

-- Q. Find departments that have more than 5 students enrolled.
SELECT dept_id, COUNT(*) AS cnt
FROM collegedb.students
GROUP BY dept_id
HAVING COUNT(*) > 5;

-- Q. Find states that have more than 3 customers.
SELECT state, COUNT(state) 
AS num_of_state
FROM customers
GROUP BY state
HAVING COUNT(*) > 3;

-- Advanced
-- Q. For each department, show: total students, how many passed (marks >= 40), and how many failed (marks < 40). Students with NULL marks should not be counted in either pass/fail.
SELECT dept_id,
  COUNT(*) AS total,
  COUNT(CASE WHEN marks >= 40 THEN 1 END) AS passed,
  COUNT(CASE WHEN marks < 40 THEN 1 END) AS failed
FROM collegedb.students
GROUP BY dept_id;

-- Q. Count students per city, but only for cities that have at least one student with attendance above 75. Show city and count.
SELECT city, COUNT(*) AS students
FROM collegedb.students
GROUP BY city
HAVING MAX(attendance) > 75;