-- Return all the product
		-- name
       --  unit price
       --  new price (unit price * 1.1)
       
SELECT 
		name,
		unit_price AS 'Unit Price',
        (unit_price *1.1) AS 'New Price'
        FROM products;
        
-- I am learning MySQL from Youtube Channel Named 'Programming with Mosh' And This execrise is done from his youtube video named 'SQL Course for Beginners [Full Course]'.
-- I am also learning MySQL from a website named W3Schools.

-- From Here, Question Are From W3Schools, AI.

-- Retrieve all columns from a customers table.
SELECT * FROM customers;

-- Select only the name and birth_date columns from customers.
SELECT first_name, birth_date FROM customers;

-- List all customers whose name starts with the letter 'A' using LIKE.
SELECT * FROM customers
WHERE first_name LIKE 'A%';
