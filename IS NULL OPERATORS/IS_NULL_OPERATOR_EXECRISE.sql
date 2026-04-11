-- Get the orders that are not shipped ( this exercise question is from programming with mosh )
SELECT *
FROM orders 
WHERE shipper_id IS NULL;