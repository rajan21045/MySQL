-- MySQL INSERT INTO Statement
/*
The MySQL INSERT INTO Statement
The INSERT INTO statement is used to insert new records in a table.
It is possible to write the INSERT INTO statement in two ways:

Syntax 1
Specify both the column names and the values to be inserted:
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

Syntax 2
If you insert values for ALL the columns of the table, you can omit the column names.
However, the order of the values must be in the same order as the columns in the table:
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
*/

/*
INSERT INTO Example
Here we insert values for ALL the columns of the table, so we omit the column names.
The following SQL inserts a new record in the "Customers" table:

Example:
*/
INSERT INTO customers (first_name, last_name, birth_date, phone, address, city, state, points)
VALUES ('Rajan', 'Poudel', '2004-08-20', '9767949689', 'Gaindakot -04, Nawalparasi', 'Nawalparasi', 'GK', 2292);

/*
Notice that we did not insert any number into the CustomerID field!
The CustomerID column is an auto-increment field and will be automatically generated when a new record is inserted.
*/

/*
Insert Data Only in Specific Columns
Here we insert values only in some specific columns of the table.
*/
INSERT INTO students(name,age, attendance) VALUES('Rajan Poudel', 21, 95);

/*
Insert Multiple Rows
To insert multiple rows of data, we use the same INSERT INTO statement, but with multiple values:
*/
INSERT INTO students(name, age, gender, marks, city, attendance, dept_id)
VALUES ('Ashok Poudel', 20, 'Male', 89, 'Gaindakot', '91', 1),
('Sashin Godar', 22, 'Male', 80, 'Gaindakot', '99', 2),
('Prabin Thapa', 21, 'Male', 90, 'Gaindakot', '85', 3),
('Abin Ghimire', 20, 'Male', 78, 'Gaindakot', '100', 1);
-- Note: Make sure you separate each set of values with a comma ,.
/*
The last three records in the "Customers" table will now look like this:
Name			Age		Gender	Marks	City		Attendance	Dep_id
Ashok Poudel	20	 	Male	89 		Gaindakot	91			1
Sashin Godar	22	 	Male	80 		Gaindakot	99			2
Prabin Thapa	21	 	Male	90 		Gaindakot	85			2
Abin Ghimire	20	 	Male	78		Gaindakot	100			1
*/