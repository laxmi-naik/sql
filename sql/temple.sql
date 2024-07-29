create  database  temple;
use  temple ;
create table  temple_info (id int unique,temple_name varchar (20) unique,Location varchar(20) not null,Deity varchar(50),Established_Year int , Festival varchar(50) not null,
   no_Visitor int, Contact_Number bigint,Website varchar(100),constraint no_Visitor_chk check(no_Visitor>10),
   Architecture_Style varchar(100), constraint Established_Year_chk check(Established_Year>250));
    
    
insert into temple_info values (1, 'Sri Venkateswara', 'Tirupati, India', 'Venkateswara', 300, 'Brahmotsavam', 50000, 1234567890, 'www.tirumala.org', 'Dravidian');
insert into temple_info values(2, 'Kashi Vishwanath ', 'Varanasi, India', 'Shiva', 1780, 'Maha Shivaratri', 3000, 0987654321, 'www.kashivishwanath.org', 'Nagara');
insert into temple_info values(3, 'Golden Temple', 'Amritsar, India', 'Guru Granth Sahib', 1604, 'Baisakhi', 100000, 1122334455, 'www.goldentemple.org', 'Sikh Architecture');
insert into temple_info values(4, 'Meenakshi Temple', 'Madurai, India', 'Meenakshi', 1623, 'Meenakshi Thirukalyanam', 15000, 2233445566, 'www.meenakshitemple.org', 'Dravidian');
insert into temple_info values(5, 'Jagannath Temple', 'Puri, India', 'Jagannath', 1078, 'Rath Yatra', 10000, 3344556677, 'www.jagannathtemple.org', 'Kalinga');
insert into temple_info values(6, 'Somnath Temple', 'Prabhas Patan, India', 'Shiva', 1951, 'Maha Shivaratri', 6000, 4455667788, 'www.somnath.org', 'Chaulukya');
insert into temple_info values(7, 'Dwarkadhish Temple', 'Dwarka, India', 'Krishna', 2000, 'Janmashtami', 5000, 5566778899, 'www.dwarkadhish.org', 'Chaulukya');
insert into temple_info values(8, 'Sabarimala Temple', 'Pathanamthitta', 'Ayyappan', 1150, 'Makaravilakku', 30000, 6677889900, 'www.sabarimala.org', 'Dravidian');
insert into temple_info values(9, 'Badrinath Temple', 'Badrinath, India', 'Vishnu', 820, 'Badri Kedar Festival', 5000, 7788990011, 'www.badrinath.org', 'Nagara');
insert into temple_info values(10, 'Vaishno Devi Temple', 'Katra, India', 'Vaishno Devi', 720, 'Navratri', 8000, 8899001122, 'www.vaishnodevi.org', 'Shakti');
insert into temple_info values(11, 'Ramanathaswamy', 'Rameswaram, India', 'Shiva', 1173, 'Maha Shivaratri', 7000, 9900112233, 'www.ramanathaswamy.org', 'Dravidian');
insert into temple_info values(12, 'Lingaraja Temple', 'Bhubaneswar, India', 'Shiva', 1090, 'Maha Shivaratri', 6000, 1011121314, 'www.lingaraja.org', 'Kalinga');
insert into temple_info values(13, 'Akshardham Temple', 'Delhi, India', 'Swaminarayan', 2005, 'Diwali', 25000, 1213141516, 'www.akshardham.com', 'Modern');
insert into temple_info values(14, 'Iskcon Temple', 'Bangalore, India', 'Krishna', 1997, 'Janmashtami', 10000, 1314151617, 'www.iskconbangalore.org', 'Modern');
insert into temple_info values(15, 'Birla Mandir', 'Hyderabad, India', 'Venkateswara', 1976, 'Brahmotsavam', 5000, 1415161718, 'www.birlamandir.org', 'Modern');
insert into temple_info values(16, 'Sun Temple', 'Konark, India', 'Surya', 1250, 'Chandrabhaga Mela', 4000, 1516171819, 'www.konarksuntemple.org', 'Kalinga');
insert into temple_info values(17, 'Mahabodhi Temple', 'Bodh Gaya, India', 'Buddha', 260, 'Buddha Purnima', 2000, 1617181920, 'www.mahabodhi.org', 'Buddhist');
insert into temple_info values(18, 'laxmi temple', 'shegunshi, India', 'laxmi', 270, ' Purnima', 2100, 9844312496, 'www.laxmi.org', 'laxmi');
insert into temple_info values(19, 'laxminarayan Temple', 'tredal, India', 'laxminarayan', 280, 'Buddha', 2200, 161711245, 'www.narayan.org', 'narayan');
insert into temple_info values(20, 'shani Temple', 'athani, India', 'shani', 290, 'pooja', 2300, 8105627512, 'www.shani.org', 'shani');
 alter table temple_info modify column Deity varchar(50) not null;
 alter table temple_info add constraint Contact_Number_uni unique(Contact_Number);
   
