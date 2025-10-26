use college111;

create table student (
  id int primary key,
  name varchar(50)
);

insert into student values 
 (101, "adam"),
 (102, "bob"),
 (103, "casey");
 
 create table course(
   id int primary key,
   course varchar(40)
);

insert into course values
 (102, "english"),
 (105, "math"),
 (103, "science"),
 (107, "computer science");
 
 select * from student;
 select * from course;
 
 #inner join
 select *
 from student
 inner join course
 on student.id=course.id;
 
 #inner join
 select *
 from student as s
 inner join course as c
 on s.id=c.id;
 
 #left join
 select *
 from student as s
 left join course as c
 on s.id=c.id;
 
 #right join
 select *
 from student as s
 right join course as c
 on s.id=c.id;
 
 #full join
 select *
 from student as s
 left join course as c
 on s.id=c.id
 union
 select *
 from student as s
 right join course as c
 on s.id=c.id;
 
 #left exclusive join
 select *
 from student as s
 left join course as c
 on s.id=c.id
 where c.id is null;
 
 #right exclusive join
 select *
 from student as s
 right join course as c
 on s.id=c.id
 where s.id is null;
 
 #full exclusive join
 select *
 from student as s
 left join course as c
 on s.id=c.id
 where c.id is null
 union
 select *
 from student as s
 right join course as c
 on s.id=c.id
 where s.id is null;
 
 create table employee(
   id int primary key,
   name varchar(30),
   manager_id int
);

insert into employee values
 (101, "adam", 103),
 (102, "bob", 104),
 (103, "casey", null),
 (104, "donald", 103);
 
#self join
select *
from employee as a
join employee as b
 on a.id=b.manager_id;
 
 select a.name as manager_name, b.name
from employee as a
join employee as b
 on a.id=b.manager_id;
 
 select name from employee
 union
 select name from employee;
 
 select name from employee
 union all
 select name from employee;