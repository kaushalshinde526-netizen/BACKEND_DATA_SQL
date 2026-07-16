create datbase if not exists kitv1;
use kitv1;
create table if not exists emp(eid int primary key,name varchar(20));
desc emp;
insert into emp values(1,'amit');
insert into emp values(2,''neha');
select * from emp;
drop table if exists emp;
drop database if exists kitv1;
