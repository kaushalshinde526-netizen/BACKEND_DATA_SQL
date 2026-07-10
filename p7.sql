create database kc9july26v1;
use kc9july26v1;
create table student(
    rno int primary key,
    name varchar(30),
    check(rno>=1 and rno<=120)
);
desc student;
insert into student values(1,'Amit');
insert into student values(25,'Rahul');
insert into student values(50,'Priya');
insert into student values(120,'Sneha');
select * from student;