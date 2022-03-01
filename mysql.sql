create database student_database;

use student_database;

create table student(
student_id int primary key auto_increment,
first_name varchar(45) not null unique,
last_name varchar(45)
);


insert student(first_name,last_name)values('Jeevakumar','VK');
insert student(first_name,last_name)values('Vignesh','B');
insert student(first_name,last_name)values('Sundar','Pichai');
insert student(first_name,last_name)values('Elon','Musk');

create table course(
course_id int primary key auto_increment,
course_name varchar(30) not null
);

insert course(course_id,course_name)values(01,'CSE');
insert course(course_id,course_name)values(02,'CSE');
insert course(course_id,course_name)values(03,'IT');
insert course(course_id,course_name)values(04,'Rocket Science');


create table enrollment(
enrollment_id int primary key auto_increment,
student_id int not null,
course_id int not null,
enroll_date date,
foreign key (student_id) references student(student_id),
foreign key (course_id) references course(course_id)
);


insert enrollment(student_id,course_id,enroll_date)values(01,01,'2021-01-01');
insert enrollment(student_id,course_id,enroll_date)values(02,02,'2021-01-15');
insert enrollment(student_id,course_id,enroll_date)values(03,03,'1990-12-18');
insert enrollment(student_id,course_id,enroll_date)values(04,04,'1992-09-24');

update enrollment
set enroll_date='2022-01-01' where enroll_date='2021-01-01' ;

DELETE FROM enrollment WHERE student_id=3;

truncate enrollment;
drop table enrollment;

ALTER TABLE student MODIFY student_id INT NOT NULL;
ALTER TABLE student DROP PRIMARY KEY;
TRUNCATE student;
drop table student;

ALTER TABLE course MODIFY course_id INT NOT NULL;
ALTER TABLE course DROP PRIMARY KEY;
TRUNCATE course;
drop table course;


DROP DATABASE student_database;
