SHOW DATABASES;

CREATE DATABASE student_database;

USE student_database;
--- TABLE CREATED AND CONSTRAINTS ADDED

CREATE TABLE students(
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(25) NOT NULL,
gender ENUM('M','F'),
birth_date DATE,
phone_number VARCHAR(15) NOT NULL UNIQUE
);
--- INSERT SOME DATA

INSERT INTO students(first_name,last_name,gender,birth_date,phone_number)
VALUES ('Jeeva','Kumar','M','1998-08-18','8438518797'),
('Vignesh','B','M','2001-06-15','9965255339'),
('Sundar','Pichai','M','1980-01-23','9865051000'),
('Elon','Musk','M','1985-10-25','9965255339');
SELECT*FROM students;


CREATE TABLE departments(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
student_id INT NOT NULL,
name VARCHAR(20),
FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO departments(student_id,name)
VALUES('1', 'IT'),
('2','ECE'),
('3','EEE'),
('4','CSE');

CREATE TABLE courses(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30),
staff_handling VARCHAR(40),
start_year YEAR,
department_id INT NOT NULL,
FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO courses(name,staff_handling,start_year,department_id)
VALUES('DBMS','UDHAYA','2016','1'),
('RDBMS','SATHYA','2021','2'),
('SQL','MOHAN','2023','3'),
('MYSQL','SENTHIL','2019','4');
SELECT*FROM courses;

--- UPDATE DATA 2021-2022

SET SQL_SAFE_UPDATES = 0;
UPDATE courses
SET start_year='2022'
WHERE start_year='2021';

-- DELETE ENTRY BY ID 
DELETE FROM courses
WHERE name = 'SQL';

--- TRUNCATE ALL TABLE

TRUNCATE TABLE courses;
TRUNCATE TABLE departments;
TRUNCATE TABLE students;


--- DROP ALL TABLES
DROP TABLE courses;
DROP TABLE departments;
DROP TABLE students;

---- DELETE DATABASE

DROP DATABASE student_database;



SHOW TABLES;
