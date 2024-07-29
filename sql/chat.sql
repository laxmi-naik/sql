create database chat;
use chat;
create  table chat_center(id int not null,c_name varchar(30) unique,c_loc varchar(30) not null,popular_chat varchar(30) unique,no_of_chat int ,
min_price bigint,max_price bigint,no_of_emp int constraint no_of_emp_chk check (no_of_emp>6),light_bill int,
per_day_income bigint constraint income_chk check(per_day_income>500));

desc chat_center;
select*from chat_center;
insert into chat_center values(1,'divyachats','rajajinagar','pizza',50,100,300,7,300,5000);
insert into chat_center values(2,'laxmichats','rrnagr','burger',40,70,300,8,150,6000);
insert into chat_center values(3,'darshanachats','gkk','dosa',30,60,350,7,300,7000);
insert into chat_center values(4,'kalpanachats','bgm','juices',60,100,350,7,300,5000);
insert into chat_center values(5,'deepakchats','btm','samosa',30,150,500,8,125,4000);
insert into chat_center values(6,'shrikantchats','gokak','bajji',20,100,500,7,320,3000);
insert into chat_center values(7,'kushichats','naragunda','gobi',20,30,500,7,195,6520);
insert into chat_center values(8,'arunchats','gkkfalls','cha',10,30,60,7,0,2150);
insert into chat_center values(9,'kiranchats','konnur','panipure',30,200,800,7,30,3500);
insert into chat_center values(10,'irannachats','hydrbad','eggrol',20,130,500,7,600,3500);
insert into chat_center values(11,'anuchats','mysore','icecream',40,100,300,8,220,5000);
insert into chat_center values(12,'vikaschats','vijaynagar','friedrice',40,70,650,7,150,3000);
insert into chat_center values(13,'poojachats','chk','eggrice',30,60,700,7,320,3560);
insert into chat_center values(14,'akashchats','athani','aluotikki',20,100,550,7,196,5060);
insert into chat_center values(15,'tappuchats','shivajinagar','paddu',30,150,650,8,245,1200);
insert into chat_center values(16,'sanjuchats','basvangudi','fries',20,100,350,7,260,1800);
insert into chat_center values(17,'rishichats','jayanagar','sandwitch',20,30,650,8,321,2200);
insert into chat_center values(18,'bhavyachats','malleswarm','maggie',10,30,200,7,60,3500);
insert into chat_center values(19,'priyachats','koramangal','masalpuri',30,200,850,8,105,4500);
insert into chat_center values(20,'madhuchats','mahalaxmilayout','noodles',20,130,450,8,1,9500);



alter table chat_center modify column c_name varchar(30) not null;


alter table chat_center add constraint id_uni unique (id);

alter table chat_center add constraint no_of_chat_chk check(no_of_chat<100);
alter table chat_center add constraint  light_bill_chk check(light_bill<=700);