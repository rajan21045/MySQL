/*
MySQL ALTER TABLE Statement

MySQL ALTER TABLE Statement
The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

Common ALTER TABLE operations are:

Add column - Adds a new column to a table
Drop column - Deletes a column in a table
Rename column - Renames a column
Modify column - Changes the data type, size, or constraints of a column
Add constraint - Adds a new constraint
Rename table - Renames a table

*/


/*

MySQL ALTER TABLE Statement
The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

Common ALTER TABLE operations are:

Add column - Adds a new column to a table
Drop column - Deletes a column in a table
Rename column - Renames a column
Modify column - Changes the data type, size, or constraints of a column
Add constraint - Adds a new constraint
Rename table - Renames a table

*/

-- Create the database
CREATE DATABASE IF NOT EXISTS shopper;
USE shopper;

-- Create a table
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Optional: insert a row to test
INSERT INTO customers (name, email) VALUES ('Asha', 'asha@example.com');

-- Check it
SELECT * FROM customers;

/*
ALTER TABLE - ADD Column
To add a column in a table, use the following syntax:

Syntax
ALTER TABLE table_name
ADD column_name datatype;
The following SQL adds an "Email" column to the "Customers" table:
*/
ALTER TABLE customers
ADD Email varchar(255);

ALTER TABLE customers ADD phone VARCHAR(20);


/*
ALTER TABLE - DROP COLUMN
To delete a column in a table, use the following syntax:

Syntax
ALTER TABLE table_name
DROP COLUMN column_name;

The following SQL deletes the "Email" column from the "Customers" table:
*/
ALTER TABLE Customers
DROP COLUMN Email;

/*
ALTER TABLE - RENAME COLUMN
To rename a column in a table, use the following syntax:

Syntax
ALTER TABLE table_name
RENAME COLUMN old_name to new_name;
*/
ALTER TABLE customers
RENAME COLUMN EMAIL to email;

ALTER TABLE customers RENAME COLUMN phone TO mobile;


/*
ALTER TABLE - MODIFY Datatype
To modify the data type, size or constraints of a column in a table, use the following syntax:

Syntax
ALTER TABLE table_name
MODIFY column_name new_datatype constraint;
*/
-- The following SQL modifies the size of the "Email" column to varchar(100), and we also add a NOT NULL constraint:
ALTER TABLE customers
MODIFY email varchar(200) NOT NULL;

ALTER TABLE customers MODIFY mobile VARCHAR(30) NOT NULL DEFAULT '';
/*
ALTER TABLE - ADD CONSTRAINT
To add a constraint to an existing table, use the following syntax:

Syntax
ALTER TABLE table_name
ADD CONSTRAINT constraint_name constraint_definition;
The following SQL adds a constraint named "CHK_Age" that is a CHECK constraint that ensures that the "Age" column has a value of 18 and above:
*/
-- Example
ALTER TABLE Members
ADD CONSTRAINT CHK_Age CHECK (Age >= 18);

-- DROP a column
ALTER TABLE customers DROP COLUMN mobile;
