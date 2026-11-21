SHOW TABLES;

-- TRUNCATE TABLE removes all rows from a table quickly while keeping the table structure.
-- Syntax
-- TRUNCATE TABLE table_name;
-- (The TABLE keyword is optional in MySQL: TRUNCATE table_name; works too.)

/*
How it differs from DELETE FROM table_name;
						TRUNCATE																DELETE (no WHERE)
Speed					Very fast (drops and recreates the table internally)					Slower, removes row by row
AUTO_INCREMENT			Reset to 1																Keeps the current counter
WHERE clause			Not supported															Supported
Rollback				Cannot be rolled back (implicit commit, DDL)							Can be rolled back inside a transaction
Triggers				ON DELETE triggers do not fire											ON DELETE triggers fire
Rows affected			Reports 0																Reports the actual count
Privilege needed		DROP																	DELETE

Foreign key gotcha
If other tables reference the table through a foreign key, InnoDB will refuse with an error like:
		Cannot truncate a table referenced in a foreign key constraint
*/


TRUNCATE TABLE rajan;

START TRANSACTION;
DELETE FROM order_items WHERE id > 0;
ROLLBACK;
SELECT COUNT(*) FROM order_items;   -- rows are back

