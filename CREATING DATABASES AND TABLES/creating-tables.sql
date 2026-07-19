CREATE TABLE hostel (
    hostel_id INT AUTO_INCREMENT PRIMARY KEY,
    room_no VARCHAR(10) NOT NULL,
    block VARCHAR(10),
    hostel_name VARCHAR(50),
    bed_no INT,
    student_id INT UNIQUE,
    check_in_date DATE,
    monthly_fee DECIMAL(8,2),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO hostel
(room_no, block, hostel_name, bed_no, student_id, check_in_date, monthly_fee)
VALUES
('101', 'A', 'Everest Hostel', 1, 1, '2026-01-10', 6000),
('102', 'A', 'Everest Hostel', 2, 2, '2026-01-12', 6000),
('201', 'B', 'Himalaya Hostel', 1, 3, '2026-02-01', 6500),
('202', 'B', 'Himalaya Hostel', 2, 4, '2026-02-05', 6500),
('203', 'C', 'Rajan Hostel', 2, 5, '2026-02-05', 3500),
('204', 'C', 'Comfort  Hostel', 2, 6, '2026-02-05', 1500),
('402', 'D', 'Wanderer Hostel', 12, 7, '2026-02-05', 5500),
('403', 'D', 'Whispering Trails Hostel', 8, 8, '2026-02-05', 8500);