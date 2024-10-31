-- สร้างตาราง employees
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    position VARCHAR(50) NOT NULL,
    background_color VARCHAR(7) DEFAULT '#FFFFFF', -- สีพื้นหลังของแต่ละคนในรูปแบบ HEX
    profile_pic VARCHAR(255) DEFAULT NULL -- ที่อยู่ของไฟล์รูปภาพ
);

-- ข้อมูลตัวอย่างพนักงาน 15 รายการ
INSERT INTO employees (name, surname, position, background_color, profile_pic) VALUES
('John', 'Doe', 'CEO', '#FFCCCB', 'john_doe.jpg'),
('Jane', 'Smith', 'CTO', '#FFD700', 'jane_smith.jpg'),
('Alice', 'Brown', 'CFO', '#ADFF2F', 'alice_brown.jpg'),
('Bob', 'Johnson', 'COO', '#FF69B4', 'bob_johnson.jpg'),
('Charlie', 'Miller', 'CMO', '#87CEFA', 'charlie_miller.jpg'),
('Emily', 'Davis', 'Engineer', '#FFA07A', 'emily_davis.jpg'),
('Frank', 'Wilson', 'Engineer', '#32CD32', 'frank_wilson.jpg'),
('Grace', 'Taylor', 'Product Manager', '#BA55D3', 'grace_taylor.jpg'),
('Henry', 'Anderson', 'Designer', '#4682B4', 'henry_anderson.jpg'),
('Isla', 'Thomas', 'Designer', '#FFA500', 'isla_thomas.jpg'),
('Jack', 'Moore', 'Data Scientist', '#D2691E', 'jack_moore.jpg'),
('Kate', 'Martin', 'Data Analyst', '#FF4500', 'kate_martin.jpg'),
('Liam', 'Lee', 'Sales Manager', '#20B2AA', 'liam_lee.jpg'),
('Mia', 'Walker', 'Account Manager', '#FF6347', 'mia_walker.jpg'),
('Noah', 'Perez', 'HR Specialist', '#6A5ACD', 'noah_perez.jpg');
