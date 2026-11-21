USE CollegeDB;
-- Level 1
-- 1. Select students age ≥ 18 AND marks ≥ 40
SELECT * 
FROM Students
WHERE age >= 18
AND marks >= 40; 

-- 2. Select students from Butwal OR Pokhara
SELECT * 
FROM Students
WHERE city = 'Butwal'
OR city = 'Pokhara';

-- 3. Select students NOT having marks ≥ 50
SELECT * 
FROM Students
WHERE NOT marks >=50; 

-- 4. Select students age > 18 AND city = 'Kathmandu'
SELECT * 
FROM Students
WHERE age > 18 
AND city = 'Kathmandu';

-- 5. Select students marks < 40 OR age < 18
SELECT * 
FROM Students
WHERE marks < 40 
OR age < 18;

-- Level 2 (Mixed Conditions)
-- 6. Students from Kathmandu AND marks > 80
SELECT * 
FROM Students 
WHERE city = 'Kathmandu' 
AND marks > 80;

-- 7. Students from Pokhara OR marks > 85
SELECT * 
FROM Students
WHERE city = 'Pokhara'
OR marks > 85;

-- 8. Students NOT from Butwal AND marks ≥ 40
SELECT *
FROM Students
WHERE NOT city = 'Butwal' 
AND marks >= 40;

-- 9. Students age between 18 and 22 AND city not Kathmandu
SELECT * 
FROM Students
WHERE age > 18
AND age < 22 
AND NOT city = 'Kathmandu';

-- 10. Students marks ≥ 50 AND (city Kathmandu OR Pokhara)
SELECT *
FROM Students
WHERE marks >=50 AND (city ='Kathmandu' AND city='Pokhara')