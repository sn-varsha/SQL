create database college2;
use college2;

create table student (
   rollno int primary key,
   name varchar(50),
   marks int not null,
   grade varchar(1),
   city varchar(20)
);

insert into student 
(rollno, name, marks, grade, city)
values 
(101,"anil",78,"c","pune"),
(102,"bhumi", 93, "a", "mumbai"),
(103,"chetu", 85, "b", "mumbai"),
(104, "dhruv", 96, "a", "delhi"),
(105, "eshu", 12, "f", "delhi"),
(106, "farah", 82, "b", "delhi");

select name, marks from student;

select * from student;

select distinct city from student;

select * from student where marks>80;

select * from student where marks>80 and city="mumbai";

select * from student where marks+10>100;

select * from student where marks>90 or city="mumbai";

select * from student where marks between 80 and 90;

select * from student where city in ("delhi","mumbai", "bangalore");

select * from student where city in ("dvg", "bangalore");

select * from student where city not in ("delhi","mumbai");

select * from student limit 3;

select * from student where marks>75 limit 3;

select * from student order by city asc;

select * from student order by marks asc;

select * from student order by marks desc limit 3;