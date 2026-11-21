/*
MySQL MIN() Function
The MIN() function returns the smallest value of the selected column.

The MIN() function works with numeric, string, and date data types. 

MIN() Syntax
SELECT MIN(column_name)
FROM table_name
WHERE condition;
*/

/*
What is MIN()?
MIN() is an aggregate function.
It returns the smallest value from a column.
*/

/*
Example 1

Suppose your students table contains:
student_id	name	marks
1			Raj		78
2			Sita	92
3			Ram		65
4			Hari	88
5			Gita	70

If you write:
SELECT MIN(marks)
FROM students;

Output
MIN(marks)
65

MySQL looks at every value in the marks column:
78
92
65
88
70
The smallest value is 65, so it returns 65.

Another Example

Suppose the ages are
name	age
Raj		20
Sita	18
Ram		21
Hari	19

Query:
SELECT MIN(age)
FROM students;

Output
18
Because 18 is the smallest age.
*/

SELECT MIN(monthly_fee) AS MONTHLY_FEE
FROM hostel;
-- Tip: When using MIN(), the returned column will not have a name. Use the AS keyword to give the column a descriptive name.

-- Use MIN() with Date Column
-- The following SQL returns the earliest check in date in the check in date column, in the "Hostel" table:
SELECT MIN(check_in_date) AS CHECK_IN_DATE
FROM hostel;

/*
Can MIN() work on text?
Yes.

Example:
city
Kathmandu
Butwal
Pokhara
SELECT MIN(city)
FROM students;

Output
Butwal

Why?
Because for text, MySQL compares values alphabetically.
Butwal
Kathmandu
Pokhara

Butwal comes first alphabetically, so MIN(city) returns Butwal.
In practice, MIN() is most commonly used with numeric columns (marks, age, salary, etc.) or dates.
*/

-- Q. Find the minimum hostel name.
SELECT MIN(hostel_name) AS HOSTEL_NAME
FROM hostel;

/*
Using WHERE with MIN()

Suppose you only want the lowest marks among female students.
SELECT MIN(marks)
FROM students
WHERE gender = 'Female';
MySQL first filters the rows where gender = 'Female', then finds the smallest marks value among those rows.

What MIN() Cannot Do

Suppose you write:
SELECT name, MIN(marks)
FROM students;

❌ This is not valid in standard SQL because MIN(marks) gives one value, but name could come from many different rows. MySQL (depending on SQL mode) may reject this or return unpredictable results.
If you want the name of the student with the lowest marks, you'll learn that later using subqueries or ORDER BY ... LIMIT 1.
*/

-- Q. Find the minimum marks.
SELECT MIN(marks) AS MASKS FROM students;

-- Q. Find the minimum age.
SELECT MIN(age) AS AGE FROM students;

-- Q. Find the minimum attendance.
SELECT MIN(attendance) AS ATTENDANCE FROM students;

-- Q. Find the lowest student_id.
SELECT MIN(student_id) AS STUDENT_ID FROM students;

-- Q. Find the lowest monthly hostel fee.
SELECT MIN(monthly_fee) AS LOWEST_MONTHLY_FEE FROM
hostel;