create database kc7july26v2;

use kc7july26v2;

drop table if exists student;

create table student(
rno tinyint primary key,
name varchar(50),
marks tinyint,
check(rno>=1 and rno<=120),
check(marks>=0 and marks<=100)
);

desc student;

insert into student values(1,'Amit',85);
insert into student values(2,'Rahul',90);
insert into student values(3,'Sneha',75);
insert into student values(120,'Priya',100);

select * from student;