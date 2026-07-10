use kcv1;

drop table if exists cust1;

create table if not exists cust1(
    toppings set('sp', 'cc', 'ff', 'bi', 'or')
);

insert into cust1 values('sp');
insert into cust1 values('ff,sp');
insert into cust1 values('or');

select * from cust1;