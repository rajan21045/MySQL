/*
 In SQL,
 
 The MAX() function returns the maximum value of a column.
 The MIN() function returns the minimum value of a column.
 
 */
/*
 SQL MAX() Function
 The syntax of the SQL MAX() function is:
 
 SELECT MAX(columnn)
 FROM table;
 Here,
 
 column is the name of the column you want to filter
 table is the name of the table to fetch the data from
 For example,
 
 */
USE college;
SELECT MAX(Age)
FROM student;
-- Here, the SQL command returns the largest value from the age column.
/*
 SQL MIN() Function
 The syntax of the SQL MIN() function is:
 
 SELECT MIN(columnn)
 FROM table;
 Here,
 
 column is the name of the column you want to filter
 table is the name of the table to fetch the data from
 For Example,
 */
SELECT MIN(age)
FROM student;
-- Here, the SQL command returns the smallest value from the age column.
/*
 Aliases With MAX() and MIN()
 In the above examples, the field names in the result sets were MIN(age) and MAX(age).
 
 It is also possible to give custom names to these fields using the AS keyword. For example,
 */
-- use max_age as an alias for the maximum age
SELECT MAX(Age) AS max_age
FROM student;
-- Here, the field name MAX(age) is replaced with max_age in the result set.
/*
 MAX() and MIN() With Strings
 The MAX() and MIN() functions also work with texts. For example,
 */
-- select the minimum value of first_name from Customers
SELECT MIN(Name) AS min_first_name
FROM student;
-- Here, the SQL command selects the minimum value of first_name based on the dictionary order.
/*
 MAX() and MIN() in Nested SELECT
 As we know, the MAX() function returns the maximum value. Similarly, the MIN() function returns the minimum value.
 
 However, if we want to select the whole row containing that value, we can use the nested SELECT statement like this.
 */
-- MIN() function in a nested SELECT statement
SELECT *
FROM student
WHERE Age = (
        SELECT MIN(Age)
        FROM student
    );
-- Here, the SQL command selects all the customers with the smallest age.