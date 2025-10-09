create database college;

use college;

create table student (
  rollno int primary key,
  name varchar(50)
);

insert into student 
(rollno,name) 
values 
(101,"karan"),
(102,"arjun"); 

insert into student values (103,"sham");

select * from student;