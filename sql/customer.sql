create database customer;
use customer;
create table customer_info (c_id int ,c_name varchar(50) primary key ,product_name varchar(50) ,no_of_product int ,product_price int);
desc customer_info;
alter table customer_info add  constraint unique (c_id);
insert into customer_info values(1,'laxmi','shampoo',1,100);
insert into customer_info values(2,'divya','soap',2,50);
insert into customer_info values(3,'swati','toothbrush',3,30);
insert into customer_info values(4,'bhavya','towel',4,500);
insert into customer_info values(5,'anu','spoon',5,40);
select*from customer_info;
alter table customer_info add  constraint product_price_chk check(product_price>20);
alter table customer_info drop index c_id;