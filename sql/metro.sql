create database metro;
use metro;
CREATE TABLE metro_info (
    StationID INT unique,StationName VARCHAR(100) NOT NULL,LineNumber INT NOT NULL,City VARCHAR(50),OpenYear INT CHECK (OpenYear >= 1900),
    DailyRidership INT CHECK (DailyRidership >= 0),Zone INT,TransferAvailable BOOLEAN,UniqueCode VARCHAR(10) UNIQUE,ParkingAvailable BOOLEAN
);

INSERT INTO metro_info VALUES(1, 'Central', 1, 'Metropolis', 1920, 50000, 1, TRUE, 'A12345', TRUE);
INSERT INTO metro_info VALUES(2, 'North Station', 2, 'Metropolis', 1980, 30000, 2, FALSE, 'B23456', FALSE);
INSERT INTO metro_info VALUES(3, 'East Side', 1, 'Metropolis', 1950, 25000, 3, TRUE, 'C34567', TRUE);
INSERT INTO metro_info VALUES(4, 'West End', 3, 'Metropolis', 1990, 40000, 4, TRUE, 'D45678', FALSE);
INSERT INTO metro_info VALUES(5, 'South Station', 2, 'Metropolis', 2005, 35000, 1, FALSE, 'E56789', TRUE);
INSERT INTO metro_info VALUES(6, 'Harbor View', 3, 'Metropolis', 2010, 15000, 5, TRUE, 'F67890', FALSE);
INSERT INTO metro_info VALUES(7, 'City Center', 1, 'Metropolis', 1975, 60000, 2, TRUE, 'G78901', TRUE);
INSERT INTO metro_info VALUES(8, 'Uptown', 2, 'Metropolis', 1965, 22000, 3, FALSE, 'H89012', FALSE);
INSERT INTO metro_info VALUES(9, 'Downtown', 1, 'Metropolis', 1935, 45000, 1, TRUE, 'I90123', TRUE);
INSERT INTO metro_info VALUES(10, 'Riverside', 3, 'Metropolis', 1985, 18000, 4, FALSE, 'J01234', FALSE);
INSERT INTO metro_info VALUES(11, 'Park Lane', 2, 'Metropolis', 2000, 20000, 5, TRUE, 'K12345', TRUE);
INSERT INTO metro_info VALUES(12, 'Garden City', 1, 'Metropolis', 1970, 30000, 2, TRUE, 'L23456', FALSE);
INSERT INTO metro_info VALUES(13, 'Industrial Area', 3, 'Metropolis', 1988, 25000, 3, FALSE, 'M34567', TRUE);
INSERT INTO metro_info VALUES(14, 'University', 2, 'Metropolis', 2015, 27000, 1, TRUE, 'N45678', FALSE);
INSERT INTO metro_info VALUES(15, 'Tech Park', 1, 'Metropolis', 1995, 5000, 4, TRUE, 'O56789', TRUE);
INSERT INTO metro_info VALUES(16, 'Historical Quarter', 3, 'Metropolis', 1940, 10000, 5, FALSE, 'P67890', FALSE);
INSERT INTO metro_info VALUES(17, 'Fashion District', 2, 'Metropolis', 2008, 33000, 3, TRUE, 'Q78901', TRUE);
INSERT INTO metro_info VALUES(18, 'Business Bay', 1, 'Metropolis', 2012, 28000, 1, FALSE, 'R89012', FALSE);
INSERT INTO metro_info VALUES(19, 'Suburban', 3, 'Metropolis', 1982, 15000, 2, TRUE, 'S90123', TRUE);
INSERT INTO metro_info VALUES(20, 'Countryside', 2, 'Metropolis', 2003, 12000, 4, FALSE, 'T01234', FALSE);

select* from metro_info;
desc metro_info;

alter table metro_info modify column city varchar(50)not null;

alter table metro_info add constraint station_uni unique(stationname);

alter table metro_info add constraint line_chk check (linenumber>0);
alter table metro_info add constraint transfer_chk check (transferavailable>=0);