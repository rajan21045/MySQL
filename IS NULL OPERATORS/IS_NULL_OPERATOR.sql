-- The is null operator

-- What is a NULL Value?
-- If a field in a table is optional, it is possible to insert or update a record without adding any value to this field. This way, the field will be saved with a NULL value.
-- A NULL value represents an unknown, missing, or inapplicable data in a database field. It is not a value itself, but a placeholder to indicate the absence of data.

-- Note: A NULL value is different from zero (0) or an empty string (''). A field with a NULL value is one that has been left blank upon record creation.

-- IS NULL Syntax
-- SELECT column_names
-- FROM table_name
-- WHERE column_name IS NULL;

-- IS NOT NULL Syntax
-- SELECT column_names
-- FROM table_name
-- WHERE column_name IS NOT NULL;

-- This is the query which select all customers who don't have phone number
SELECT *
FROM customers
WHERE phone IS NULL;

-- This is the query which select all customer except ones who have null values in the phone
SELECT *
FROM customers
WHERE phone IS NOT NULL;


SELECT name, age
FROM Students
WHERE attendance OR gender IS NULL;
