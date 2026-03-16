/*

Get the customers whose 
		addresses contain TRAIL or AVENUE
        phone number end with 9
        
*/
SELECT * 
FROM customers 
WHERE address LIKE '%TRAIL%' OR
	  address LIKE '%AVENUE%';	
      
SELECT * 
FROM customers 
WHERE phone LIKE '%9';	

SELECT * 
FROM customers 
WHERE phone NOT LIKE '%9';	