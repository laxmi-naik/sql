create database market;
use market;
create table market_info (id int not null,m_name varchar(30) unique,m_add varchar(20) unique,m_cost bigint not null,
income bigint,no_of_shops int constraint shop_chk check (no_of_shops>10),popular_shop varchar(30),
emp_per_shop int constraint emp_chk check (emp_per_shop<10),inport_items bigint,export_items int);

select * from market_info;
 
 insert into market_info values(1,'kr','bangalore',20000,120000,200,'bsc',8,2000,6000);
 insert into market_info values(2,'chickpet','chickpetbangalore',30000,130000,220,'chick',2,2100,548);
 insert into market_info values(3,'jayanagar','4th block',40000,140000,240,'medical',3,2200,548);
 insert into market_info values(4,'russel','bangaluru',50000,150000,260,'cloth',5,2300,481);
 insert into market_info values(5,'city','mangalore',60000,160000,280,'globe',6,2400,5486);
 insert into market_info values(6,'dandelimarket','dandeli',70000,170000,300,'delhi',6,2500,548);
 insert into market_info values(7,'hubalimarket','hubali',80000,180000,320,'dazarle',4,2600,156);
 insert into market_info values(8,'gulbargamarket','kalburgi',90000,190000,340,'glow',6,2700,5182);
 insert into market_info values(9,'bogarvase','bgm',21000,200000,360,'deepa',9,2800,8455);
 insert into market_info values(10,'kadebazar','belagavi',22000,220000,380,'novelty',2,2900,3482);
 insert into market_info values(11,'ballarimarket','ballari',23000,240000,400,'neha',6,3000,1259);
 insert into market_info values(12,'dharwadmarket','dharwad',24000,25000,420,'laxmi',6,3100,485);
 insert into market_info values(13,'shimogamarket','shimoga',25000,26000,440,'appu',3,3200,794);
 insert into market_info values(14,'udapimarket','udapi',26000,27000,460,'kavya',5,3300,4874);
 insert into market_info values(15,'badamimarket','badami',27000,28000,480,'deesha',9,3304,746);
 insert into market_info values(16,'gokakmarket','gokak',28000,27200,500,'manasa',6,2152,475);
 insert into market_info values(17,'konnurmarket','konnur',30000,29000,520,'keerti',3,2481,484);
 insert into market_info values(18,'hasanmarket','hasan',32000,26759,540,'kumar',6,5481,484);
 insert into market_info values(19,'zudio','alur',34000,249800,560,'kiran',6,584,54784);
 insert into market_info values(20,'lulu','sakaleshpur',36000,548500,580,'gopal',1,548,2184);
 
 
 alter table market_info modify column m_add varchar(20) not null;
 
 alter table market_info add constraint id_uni unique(id);
 
 alter table market_info add constraint inport_chk check (inport_items<10000);
  alter table market_info add constraint export_chk check (export_items>100);