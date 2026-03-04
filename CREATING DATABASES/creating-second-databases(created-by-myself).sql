CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(10),
    marks INT,
    city VARCHAR(50),
    attendance INT
);

INSERT INTO Students (name, age, gender, marks, city, attendance) VALUES
('Rajan', 20, 'Male', 85, 'Kathmandu', 90),
('Sita', 17, 'Female', 72, 'Pokhara', 80),
('Hari', 22, 'Male', 40, 'Butwal', 60),
('Gita', 19, 'Female', 35, 'Kathmandu', 70),
('Shyam', 18, 'Male', 90, 'Pokhara', 95),
('Anita', 21, 'Female', 55, 'Butwal', 85),
('Bibek', 23, 'Male', 30, 'Kathmandu', 50),
('Nisha', 20, 'Female', 78, 'Pokhara', 88);

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);
INSERT INTO Departments (dept_name) VALUES
('Computer Science'),
('Management'),
('Hotel Management');

ALTER TABLE Students
ADD dept_id INT,
ADD FOREIGN KEY (dept_id) REFERENCES Departments(dept_id);

UPDATE Students SET dept_id = 1 WHERE student_id IN (1,3,5,7);
UPDATE Students SET dept_id = 2 WHERE student_id IN (2,4);
UPDATE Students SET dept_id = 3 WHERE student_id IN (6,8);