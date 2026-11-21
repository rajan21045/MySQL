/*
The MySQL DROP TABLE Statement
The DROP TABLE statement is used to permanently delete an existing table in a database.

Note: Be careful before dropping a table! Dropping a table deletes the entire table and all its content!

Syntax
DROP TABLE table_name;
To prevent an error from occur (if the table does not exists), it is a good practice to add the IF EXISTS clause:

DROP TABLE IF EXISTS table_name;

Note: In most databases you cannot drop a table that is referenced by a foreign key constraint in another table. To solve this, you must remove the foreign key constraint or drop the dependent table.
*/

/*
MySQL DROP TABLE Example
The following SQL statement drops the "Shippers" table:
*/
USE shop;
DROP TABLE IF EXISTS rajan;
/*
MySQL TRUNCATE TABLE
The TRUNCATE TABLE statement is used to delete all the records in a table, but it keeps the table structure, columns and constraints.

Syntax
TRUNCATE TABLE table_name;
*/