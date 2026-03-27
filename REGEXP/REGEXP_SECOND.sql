-- Matches last_name where:
-- 'e' is followed immediately by either f, m, or q
-- Examples: 'ef', 'em', 'eq' inside the string
SELECT * 
FROM customers
WHERE last_name REGEXP 'e[fmq]';


-- Matches last_name where:
-- any character from a to h is followed immediately by 'e'
-- Examples: 'ae', 'be', 'ce', ..., 'he'
SELECT * 
FROM customers
WHERE last_name REGEXP '[a-h]e';