create database college111;

use college111;

create table student111 (
  rollno int primary key,
  name varchar(50),
  marks int not null,
  city varchar(20)
);

insert into student111
(rollno,name,marks,city)
values 
(101,"anil",78,"Pune"),
(102,"babu",95,"Delhi"),
(103,"charu",68,"Mumbai"),
(104,"dhanu",79,"Delhi");

select name, city from student111;
select distinct city from student111;
select * from student111 where marks>80;
select * from student111 where marks>60 and city="Delhi";