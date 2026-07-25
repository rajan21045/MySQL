-- College DB — students and hostel
-- 1. Insert a new student "Bibek Thapa", age 20, gender "Male", marks 78, city "Pokhara", attendance 85, dept_id 2 — using explicit column names.
INSERT INTO students(name, age, gender, marks, city, attendance, dept_id) VALUES
('Rajan Poudel', 21, 'Male', 78, 'Pokhara', 85, 2);

-- 2. Insert a student where you skip marks and attendance entirely. What values do they get, and why is this possible when name can't be skipped?
INSERT INTO students(name, age, gender, city, dept_id) VALUES
('Rajan Poudel', 21, 'Male', 'Pokhara', 3);

-- 3. Insert 3 students in a single multi-row INSERT statement, varying their dept_id values.
INSERT INTO students(name, age, gender, marks, city, attendance, dept_id) VALUES
('Avery Shannon', 23, 'Female', 78, 'Pokhara', 89, 2),
('Braelyn Garner', 28, 'Male', 78, 'Pokhara', 95, 1),
('Miley Torres', 21, 'Male', 78, 'Pokhara', 78, 3);

-- 4. Insert a new hostel record for an existing student_id from your students table, with room_no "A-101", block "A", hostel_name "Boys Hostel", bed_no 2, check_in_date using CURDATE(), and monthly_fee 3500.00.
INSERT INTO hostel(room_no, block, hostel_name, bed_no, student_id, check_in_date, monthly_fee)
VALUES('A-101', 'A', 'Boys Hostel', 2, 21, CURDATE(), 3500.00);

-- 5. Try inserting two hostel rows with the same student_id. What error do you get, and why — referencing the UNI constraint shown in DESC hostel?
INSERT INTO hostel(room_no, block, hostel_name, bed_no, student_id, check_in_date, monthly_fee)
VALUES('A-102', 'A', 'Boys Hostel', 2, 22, CURDATE(), 3500.00),
('A-103', 'A', 'Boys Hostel', 2, 22, CURDATE(), 3500.00);
-- Error Message: Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`collegedb`.`hostel`, CONSTRAINT `hostel_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`))

-- 6. Insert a hostel record where student_id is NULL (a bed reserved but not yet assigned to anyone). Does this succeed? Why does UNIQUE behave differently from PRIMARY KEY when it comes to NULL?
INSERT INTO hostel(room_no, block, hostel_name, bed_no, student_id, check_in_date, monthly_fee)
VALUES('A-103', 'A', 'Boys Hostel', 2, NULL, CURDATE(), 3500.00);
-- Does This Succeed? : 1 row(s) affected
INSERT INTO hostel(room_no, block, hostel_name, bed_no, student_id, check_in_date, monthly_fee)
VALUES('A-103', 'A', 'Boys Hostel', 2, NULL, CURDATE(), 3500.00);

-- 7. Insert a student with a dept_id that doesn't exist in a hypothetical departments table (assume a foreign key exists even though it's not shown here). What error would you expect in that case, and how is it different from the errors above?
INSERT INTO students (name, age, gender, marks, city, attendance, dept_id)
VALUES ('Anisha Rai', 21, 'Female', 82, 'Bharatpur', 90, 999);
-- Response: Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`collegedb`.`students`, CONSTRAINT `students_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`))

-- sql_store — customers, persons, users, orders
-- 8. Insert a row into persons without providing a PersonID. Since there's no auto_increment or PRIMARY KEY here, what value does PersonID get?
INSERT INTO persons(LastName, FirstName, Address, City) VALUES('Poudel', 'Rajan', 'Gaindakot-04', 'Nawalparasi');

-- 9. Insert two rows into persons with the exact same PersonID value (e.g., both 1). Does MySQL allow this? Why does this behave differently than trying the same thing on customers.customer_id?
INSERT INTO persons (PersonID, LastName, FirstName, Address, City)
VALUES (1, 'Sharma', 'Kiran', 'Chitwan-05', 'Bharatpur');

INSERT INTO persons (PersonID, LastName, FirstName, Address, City)
VALUES (1, 'Adhikari', 'Rita', 'Butwal-08', 'Butwal');