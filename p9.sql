create database ecommerce_db;
use ecommerce_db;
drop table if exists orders;
create table orders(
order_id int unsigned primary key,
customer_name varchar(100) not null,
payment_mode enum('COD','Card','UPI','Net Banking') not null
);
desc orders;
insert into orders values(1,'Amit','COD');
insert into orders values(2,'Rahul','UPI');
insert into orders values(3,'Sneha','Card');
insert into orders values(4,'Priya','Net Banking');

select * from orders;