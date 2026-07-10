drop dtabase if exists kcv1;
create database if not exists kcv1;
use kcv1;
create table if not exists student
(
rno int primary key,
name varchar(20)
);
desc student;
insert into student values(10,'amit');
insert into student values(11,'sumit');
select* from student;