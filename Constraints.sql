create database college11;
use college;

create table student11(
   rollno int primary key,
   name varchar(40)
);
 
select * from student11;

insert into student11 values (101,"sham");

select * from student11;

create table student10(
   rollno int,
   name varchar(40),
   primary key (rollno)
);

create table temp(
  cust_id int,
  foreign key (cust_id) references student11(rollno)
);

create table emp(
  id int,
  salary int default 25000
);

insert into emp (id) values (1001);
select * from emp;

create table city(
   id int primary key,
   city varchar(40),
   age int,
   constraint age_check check (age>=18 and city="Delhi")
);

create table newTab (
  age int check (age>=18)
);