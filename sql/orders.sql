create database orders;
use orders;
create table order_info(id int,order_name varchar(20),cost int ,order_id int primary key,created_at timestamp,created_by varchar(30),modified_at timestamp,modified_by varchar(30));
insert into order_info values(1,'jeera rice',80,301,'2024/08/01 01:20:30','laxmi','2024/08/02 02:22:32', 'divya');
insert into order_info values(2,'gobi',30,302,'2024/08/03 02:20:30','bhavya','2024/08/04 04:22:32', 'swati');
insert into order_info values(3,'dosa',60,303,'2024/08/05 06:20:30','anu','2024/08/06 06:22:32', 'samarth');
insert into order_info values(4,'panipuri',25,304,'2024/08/08 11:20:30','chanagond','2024/08/09 10:22:32', 'lalitha');
select*from order_info;

create table patment_info(id int,price int,payment_id int primary key, order_id int, foreign key(order_id)references order_info(order_id) on delete cascade on update cascade,
payment_status varchar(20),created_at timestamp,created_by varchar(30),modified_at timestamp,modified_by varchar(30));
insert into patment_info values(1,50,401,301,'success','2024/08/05 06:20:30','anu','2024/08/06 06:22:32','samarth');
insert into patment_info values(2,30,402,302,'success','2024/08/08 11:20:30','chanagond','2024/08/09 10:22:32','lalitha');

create table restaurant ( id int ,r_name varchar(30),r_id int primary key,loc varchar(40),order_id int,rattings int,payment_id int,
created_at timestamp,created_by varchar(30),modified_at timestamp,modified_by varchar(30),
foreign key (order_id)references order_info(order_id),foreign key (payment_id)references patment_info(payment_id));

insert into restaurant values(1,'royal',101,'bengalore',301,4,401,'2024/08/08 11:20:30','chanagond','2024/08/09 10:22:32','lalitha');
insert into restaurant values(2,'samarth',102,'belagavi',302,5,402,'2024/08/08 11:20:30','aly','2024/08/09 10:22:32','rahul');

 
create table delivery (id int, p_name varchar(30),mode_of_pay  enum('online','offline'),r_id int,order_id int,
created_at timestamp,created_by varchar(30),modified_at timestamp,modified_by varchar(30),
foreign key (order_id)references order_info(order_id),foreign key (r_id)references restaurant(r_id));
  
  insert into delivery values(1,'dosa','online',101,301,'2024/08/08 11:20:30','chanagond','2024/08/09 10:22:32','lalitha');
  insert into delivery values(2,'puri',2,102,302,'2023/08/08 10:20:30','karan','2023/08/09 09:22:32','arjun');