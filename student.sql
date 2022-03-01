create  database student;

use student;

create table student(id int,sname varchar(30),mark1 int,mark2 int,mark3 int ,total int);

select * from student;

insert student(id,sname,mark1,mark2,mark3,total)values(01,'Jeeva',70,60,65,195),(02,'Akashaya',80,75,68,223),(03,'vignesh',70,88,98,256),(04,'Abi',90,60,82,232),(05,'vidhya',70,88,98,256);

select sum(total) from student;