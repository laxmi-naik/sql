CREATE DATABASE RTO;
use RTO;
create table LLR_INFO(LLR_ID  int primary key, LLR_name varchar(20),date_of_birth date, address varchar(50),contact_no bigint, issue_date date,
expiry_date date, license_type varchar(50),test_status varchar(50),remark varchar(30)); 
insert into LLR_info values(1,'laxmi','2002-07-19','shegunshi',9844312496,'2023-04-11','2025-05-17','bike','passed','none');
insert into LLR_info values(2,'divya','2001-11-25','gokak',9856124875,'2022-05-11','2028-07-17','motorcycle','failed','reapply');
insert into LLR_info values(3,'bhavya','2004-07-19','athani',789456123,'2020-04-11','2024-05-17','car','pending','retake test');
insert into LLR_info values(4,'swati','2005-07-19','terdal',1457894,'2021-04-11','2025-05-17','bike','pending','additional document needed');
insert into LLR_info values(5,'anu','2003-07-19','rajajinagar',2547894552,'2018-04-11','2022-05-17','car','failed','reapply in 30 days');
insert into LLR_info values(6,'samarth','2013-09-05','btm',8105627594,'2019-04-11','2023-05-17','motorcycle','passed','none');
insert into LLR_info values(7,'mahesh','2001-05-11','belagavi',1325464452,'2014-04-11','2024-05-17','car','failed','reapply');
insert into LLR_info values(8,'tafseen','2002-07-13','bengaluru',1478956213,'2020-04-11','2020-05-17','bike','pending','retake test');
insert into LLR_info values(9,'aly','1999-07-19','mysore',25847961,'2010-04-11','2024-05-17','matorcycle','passed','none');
insert into LLR_info values(10,'rahul','2000-07-19','mahalakshmi layout',4789561232,'2011-04-11','2018-05-17','bus','failed','reapply in 30 days');
insert into LLR_info values(11,'kiran','2006-07-19','goa',147893254,'2010-04-11','2012-05-17','car','passed','none');
insert into LLR_info values(12,'karan','2007-07-19','tamil',369852147,'2011-04-11','2013-05-17','bike','pending','retake test');
insert into LLR_info values(13,'arjun','2009-07-19','ram nagar',2587946138,'2014-04-11','2017-05-17','bus','passed','none');
insert into LLR_info values(14,'payal','2008-07-19','jayanagar',8521364798,'2015-04-11','2018-05-17','motorcycle','failed','reapply');
insert into LLR_info values(15,'sai','2010-07-19','vijayanagar',7419632589,'2016-04-11','2019-05-17','bike','passed','none');
insert into LLR_info values(16,'vishal','2011-07-19','udapi',9631478527,'2017-04-11','2021-05-17','car','pending','retake test');
insert into LLR_info values(17,'sana','2012-07-19','attiguppe',3698521478,'2018-04-11','2020-05-17','scooter','failed','reapply');
insert into LLR_info values(18,'khavya','2014-07-19','haveri',3579514862,'2019-04-11','2023-05-17','motorcycle','passed','none');
insert into LLR_info values(19,'akash','2015-07-19','chikkodi',124587956,'2020-04-11','2026-05-17','bike','pending','retake test');
insert into LLR_info values(20,'iranna','2016-07-19','rabkavi',236544789,'2021-04-11','2024-05-17','car','passed','none');

insert into LLR_info(LLR_ID,LLR_name)values(1,'laxmi')on duplicate key update  address='haveri';
replace into LLR_info values(21,'vikas','2002-06-11','shegunshi',84561237,'2015-04-11','2025-05-17','bike','passed','none');


create table LLR_TEST_INFO(TEST_ID int primary key,LLR_ID int,tester_name  varchar(50),age int,gender varchar(20),address varchar(50),contact_no bigint,test_date date,
 test_result varchar(50),license_type varchar(50),examiner_name varchar(50),foreign key(LLR_ID)references LLR_info (LLR_ID) );

insert into LLR_TEST_INFO values(401,1,'laxmi',20,'female','belagavi',9844312496,'2024-05-14','pass','car','mahesh');
insert into LLR_TEST_INFO values(402,2,'divya',21,'female','bengaluru',914552789,'2023-05-14','fail','bus','vikas');
insert into LLR_TEST_INFO values(403,3,'bhavya',22,'female','haveri',5478961223,'2022-05-14','pass','sctoor','swati');
insert into LLR_TEST_INFO values(404,4,'anu',23,'female','shegunshi',1245789663,'2021-05-14','fail','truck','samarth');
insert into LLR_TEST_INFO values(405,5,'lalitha',24,'female','maha lakshami layout',3214569874,'2020-05-14','pass','bike','chanagond');
insert into LLR_TEST_INFO values(406,6,'sana',25,'female','rajajinagar',8105627594,'2025-05-14','fail','car','vishal');
insert into LLR_TEST_INFO values(407,7,'aly',26,'male','chikkodi',7676663997,'2019-05-14','pass','bus','rahul');
insert into LLR_TEST_INFO values(408,8,'teju',27,'female','mysore',9898451236,'2018-05-14','fail','sctoor','karan');
insert into LLR_TEST_INFO values(409,9,'arjun',28,'male','rabkavi',984421458,'2017-05-14','pass','truck','naha');
insert into LLR_TEST_INFO values(410,10,'sai',29,'male','bantti',245812496,'2016-05-14','fail','car','reem');
insert into LLR_TEST_INFO values(411,11,'akash',30,'male','terdal',258746913,'2015-05-14','pass','bike','akashta');
insert into LLR_TEST_INFO values(412,12,'iranna',31,'male','gokak',3214569874,'2014-05-14','fail','bus','kiran');
insert into LLR_TEST_INFO values(413,13,'khavya',19,'female','jayanagar',7896541238,'2013-05-14','pass','sctoor','payal');
insert into LLR_TEST_INFO values(414,14,'muru',32,'male','vijayanagar',8523697415,'2012-05-14','fail','car','soni');
insert into LLR_TEST_INFO values(415,15,'harsh',33,'male','attigeri',1478522369,'2011-05-14','pass','bike','bharti');
insert into LLR_TEST_INFO values(416,16,'vicky',34,'male','attiguppe',2587413694,'2010-05-14','fail','bus','ankita');
insert into LLR_TEST_INFO values(417,17,'ranveer',35,'male','btm',357951486,'2025-05-14','pass','truck','anjali');
insert into LLR_TEST_INFO values(418,18,'prem',36,'male','ram nagar',1593578452,'2026-05-14','fail','car','kushi');
insert into LLR_TEST_INFO values(419,19,'priya',37,'female','avverhalli',321579846,'2027-05-14','pass','bike','shivu');
insert into LLR_TEST_INFO values(420,20,'shreya',38,'female','athani',3254789615,'2028-05-14','fail','bike','ram');

insert into LLR_info(LLR_ID,LLR_name)values(1,'laxmi')on duplicate key update  address='haveri';
 
 
 create table DRIVING_LICENCE_INFO(DL_id int primary key, TEST_ID int,LLR_ID int,u_name varchar(30),date_of_birth date,
 address varchar(50),contact_no bigint,issue_date date,expiry_date date,license_type varchar(30),foreign key(LLR_ID)references LLR_info (LLR_ID),
 foreign key(TEST_ID )references LLR_TEST_INFO (TEST_ID ) );
 
 insert into DRIVING_LICENCE_INFO values(301,401,1,'laxmi','2002-07-19','shegunshi',9844312496,'2023-04-11','2025-05-17','bike');
insert into DRIVING_LICENCE_INFO values(302,402,2,'divya','2001-11-25','gokak',9856124875,'2022-05-11','2028-07-17','motorcycle');
insert into DRIVING_LICENCE_INFO values(303,403,3,'bhavya','2004-07-19','athani',789456123,'2020-04-11','2024-05-17','car');
insert into DRIVING_LICENCE_INFO values(304,404,4,'swati','2005-07-19','terdal',1457894,'2021-04-11','2025-05-17','bike');
insert into DRIVING_LICENCE_INFO values(305,405,5,'anu','2003-07-19','rajajinagar',2547894552,'2018-04-11','2022-05-17','car');
insert into DRIVING_LICENCE_INFO values(306,406,6,'samarth','2013-09-05','btm',8105627594,'2019-04-11','2023-05-17','motorcycle');
insert into DRIVING_LICENCE_INFO values(307,407,7,'mahesh','2001-05-11','belagavi',1325464452,'2014-04-11','2024-05-17','car');
insert into DRIVING_LICENCE_INFO values(308,408,8,'tafseen','2002-07-13','bengaluru',1478956213,'2020-04-11','2020-05-17','bike');
insert into DRIVING_LICENCE_INFO values(309,409,9,'aly','1999-07-19','mysore',25847961,'2010-04-11','2024-05-17','matorcycle');
insert into DRIVING_LICENCE_INFO values(310,410,10,'rahul','2000-07-19','mahalakshmi layout',4789561232,'2011-04-11','2018-05-17','bus');
insert into DRIVING_LICENCE_INFO values(311,411,11,'kiran','2006-07-19','goa',147893254,'2010-04-11','2012-05-17','car');
insert into DRIVING_LICENCE_INFO values(312,412,12,'karan','2007-07-19','tamil',369852147,'2011-04-11','2013-05-17','bike');
insert into DRIVING_LICENCE_INFO values(313,413,13,'arjun','2009-07-19','ram nagar',2587946138,'2014-04-11','2017-05-17','bus');
insert into DRIVING_LICENCE_INFO values(314,414,14,'payal','2008-07-19','jayanagar',8521364798,'2015-04-11','2018-05-17','motorcycle');
insert into DRIVING_LICENCE_INFO values(315,415,15,'sai','2010-07-19','vijayanagar',7419632589,'2016-04-11','2019-05-17','bike');
insert into DRIVING_LICENCE_INFO values(316,416,16,'vishal','2011-07-19','udapi',9631478527,'2017-04-11','2021-05-17','car');
insert into DRIVING_LICENCE_INFO values(317,417,17,'sana','2012-07-19','attiguppe',3698521478,'2018-04-11','2020-05-17','scooter');
insert into DRIVING_LICENCE_INFO values(318,418,18,'khavya','2014-07-19','haveri',3579514862,'2019-04-11','2023-05-17','motorcycle');
insert into DRIVING_LICENCE_INFO values(319,419,19,'akash','2015-07-19','chikkodi',124587956,'2020-04-11','2026-05-17','bike');
insert into DRIVING_LICENCE_INFO values(320,420,20,'iranna','2016-07-19','rabkavi',236544789,'2021-04-11','2024-05-17','car');

insert into LLR_info(LLR_ID,LLR_name)values(1,'laxmi')on duplicate key update  address='haveri';
 
 
 
 create table DRIVING_LICENSE_TEST_INFO(DL_ID int,tester_name  varchar(50),age int,gender varchar(20),address varchar(50),contact_no bigint,test_date date,
 test_result varchar(50),license_type varchar(50),examiner_name varchar(50),foreign key( DL_id )references DRIVING_LICENCE_INFO ( DL_id ) );
 
 
 insert into  DRIVING_LICENSE_TEST_INFO  values(301,'laxmi',20,'female','belagavi',9844312496,'2024-05-14','pass','car','mahesh');
insert into  DRIVING_LICENSE_TEST_INFO  values(302,'divya',21,'female','bengaluru',914552789,'2023-05-14','fail','bus','vikas');
insert into  DRIVING_LICENSE_TEST_INFO  values(303,'bhavya',22,'female','haveri',5478961223,'2022-05-14','pass','sctoor','swati');
insert into  DRIVING_LICENSE_TEST_INFO  values(304,'anu',23,'female','shegunshi',1245789663,'2021-05-14','fail','truck','samarth');
insert into  DRIVING_LICENSE_TEST_INFO  values(305,'lalitha',24,'female','maha lakshami layout',3214569874,'2020-05-14','pass','bike','chanagond');
insert into DRIVING_LICENSE_TEST_INFO  values(306,'sana',25,'female','rajajinagar',8105627594,'2025-05-14','fail','car','vishal');
insert into  DRIVING_LICENSE_TEST_INFO  values(307,'aly',26,'male','chikkodi',7676663997,'2019-05-14','pass','bus','rahul');
insert into  DRIVING_LICENSE_TEST_INFO  values(308,'teju',27,'female','mysore',9898451236,'2018-05-14','fail','sctoor','karan');
insert into  DRIVING_LICENSE_TEST_INFO  values(309,'arjun',28,'male','rabkavi',984421458,'2017-05-14','pass','truck','naha');
insert into  DRIVING_LICENSE_TEST_INFO  values(310,'sai',29,'male','bantti',245812496,'2016-05-14','fail','car','reem');
insert into  DRIVING_LICENSE_TEST_INFO  values(311,'akash',30,'male','terdal',258746913,'2015-05-14','pass','bike','akashta');
insert into  DRIVING_LICENSE_TEST_INFO  values(312,'iranna',31,'male','gokak',3214569874,'2014-05-14','fail','bus','kiran');
insert into  DRIVING_LICENSE_TEST_INFO  values(313,'khavya',19,'female','jayanagar',7896541238,'2013-05-14','pass','sctoor','payal');
insert into  DRIVING_LICENSE_TEST_INFO  values(314,'muru',32,'male','vijayanagar',8523697415,'2012-05-14','fail','car','soni');
insert into  DRIVING_LICENSE_TEST_INFO  values(315,'harsh',33,'male','attigeri',1478522369,'2011-05-14','pass','bike','bharti');
insert into  DRIVING_LICENSE_TEST_INFO  values(316,'vicky',34,'male','attiguppe',2587413694,'2010-05-14','fail','bus','ankita');
insert into  DRIVING_LICENSE_TEST_INFO  values(317,'ranveer',35,'male','btm',357951486,'2025-05-14','pass','truck','anjali');
insert into  DRIVING_LICENSE_TEST_INFO  values(318,'prem',36,'male','ram nagar',1593578452,'2026-05-14','fail','car','kushi');
insert into  DRIVING_LICENSE_TEST_INFO  values(319,'priya',37,'female','avverhalli',321579846,'2027-05-14','pass','bike','shivu');
insert into  DRIVING_LICENSE_TEST_INFO  values(320,'shreya',38,'female','athani',3254789615,'2028-05-14','fail','bike','ram');
select*from DRIVING_LICENSE_TEST_INFO;
replace into  DRIVING_LICENSE_TEST_INFO  values(320,'suhas',39,'male','hrs layout',3214578951,'2028-06-14','pass','car','hanji');
insert into LLR_info(DL_ID,tester_name)values(301,'laxmi')on duplicate key update  address='shegunshi';
 

