create database sales;
use sales;
create  table sales_info(id int unique ,sales_man_name varchar(20) not null, payment_id int primary key,order_name varchar (30),
 no_of_order int,constraint no_of_order_chk check(no_of_order>1));
 select*from sales_info;
insert into sales_info values(1,'karan',401,'panipuri',2);
insert into sales_info values(2,'aly',402,'gobi',3);
insert into sales_info values(3,'kiran',403,'dosa',5);
insert into sales_info values(4,'arjun',404,'vada',6);
insert into sales_info values(5,'prem',405,'pizza',4);
insert into sales_info values(6,'rahul',406,'sevapuri',7);
insert into sales_info values(7,'samarth',407,'pav bhaji',9);
insert into sales_info values(8,'akash',408,'samosa',8);
insert into sales_info values(9,'mahesh',409,'kulfi',5);
 insert into sales_info values(10,'vijya',410,'barfi',6);
  select*from sales_info where id  between 2 and 6;
  select * from sales_info where sales_man_name like '_%h';
  select*from sales_info order by id;
  select lower(  sales_man_name) from sales_info;      
  select upper(  order_name) from sales_info;
  select concat(id,sales_man_name) from sales_info;
  select length(sales_man_name),sales_man_name from sales_info;
  create index  no_of_order_index on sales_info( no_of_order);
  show index from sales_info;
  
  
  
