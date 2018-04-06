create database Porównywarka;

drop table Kaski;
drop table Pady;
drop table Spodnie;
drop table Firmy;
drop table Buty;
drop table Pilki;

select * from Kaski;
select * from Pady;
select * from Spodnie;
select * from Firmy;
select * from Buty;
select * from Pilki;

CREATE TABLE logowanie (
    login VARCHAR(10),
    passwd VARCHAR(10)
);
drop table logowanie;
INSERT INTO logowanie values('qwe','zxc');
select * from logowanie where login = 'qwe' and passwd='zxc';


create table Kaski (
id_k int primary key not null auto_increment,
nr_ser_k int,
nazwa_k text,
rozmiar_kask TEXT,
klasa_ochrony_glowy TEXT,
firma_k TEXT,
cena_k_$ float
);
select* from kaski;
INSERT INTO Kaski VALUES(1,10,'Air XP Pro VTD II','L','V','SCHUTT',199.99);
INSERT INTO Kaski VALUES(2,20,'Vengeance VTD II','L','V','SCHUTT','254.99');
INSERT INTO Kaski VALUES(3,30,'Speedflex','L','V','RIDDELL','399.99');
INSERT INTO Kaski VALUES(4,40,'AiR XP Pro VTD','L','V','SCHUTT','199.99');
INSERT INTO Kaski VALUES(5,50,'360','L','V','RIDDELL','374.95');
INSERT INTO Kaski VALUES(6,60,'Quantum Plus','L','V','RAWLINGS','259.99');
INSERT INTO Kaski VALUES(7,70,'Tachyon','L','V','RAWLINGS','299.99');
INSERT INTO Kaski VALUES(8,80,'Version 2.0','L','V','SG HELMETS','414.00');
INSERT INTO Kaski VALUES(9,90,'EPIC','L','V','XENITH','299.95');
INSERT INTO Kaski VALUES(10,100,'X2','L','V','XENITH','235.00');
INSERT INTO Kaski VALUES(11,110,'X2E','L','V','XENITH','235.00');
INSERT INTO Kaski VALUES(12,120,'Version 2.5','L','V','SG HELMETS','414.00');
INSERT INTO Kaski VALUES(13,130,'Revolution Speed','L','V','RIDDELL','264.99');

INSERT INTO Kaski VALUES(127,1270,'Version 1.0','L','IV','SG','398.00');
INSERT INTO Kaski VALUES(128,1280,'Air XP Pro','L','IV','SCHUTT','199.99');
INSERT INTO Kaski VALUES(129,1290,'ION 4D','L','IV','SCHUTT','244.95');
INSERT INTO Kaski VALUES(130,1300,'X1','L','IV','XENITH','299.99');
INSERT INTO Kaski VALUES(131,1310,'Impulse','L','IV','RAWLINGS','149.00');
INSERT INTO Kaski VALUES(132,1320,'Revolution','L','IV','RIDDELL','239.99');
INSERT INTO Kaski VALUES(133,1330,'Quantum','L','IV','RAWLINGS','179.99');
INSERT INTO Kaski VALUES(134,1340,'Vengeance DCT','L','IV','SCHUTT','254.95');
INSERT INTO Kaski VALUES(135,1350,'Revolution IQ','L','IV','RIDDELL','222.99');

INSERT INTO Kaski VALUES(136,1360,'Air XP','L','III','SCHUTT','174.95');
INSERT INTO Kaski VALUES(137,1370,'DNA Pro +','L','III','SCHUTT','194.95');
INSERT INTO Kaski VALUES(138,1380,'Air XP Ultralite','L','III','SCHUTT','254.95');

INSERT INTO Kaski VALUES(139,1390,'Revolution IQ','L','II','RIDDELL','159.99');
INSERT INTO Kaski VALUES(140,1400,'VSR4','L','I','RIDDELL','149.99');
INSERT INTO Kaski VALUES(141,1410,'A2000 Pro Elite','L','I','ADAMS','199.95');

select * from Kaski;

create table Pady (
id_p int primary key not null auto_increment,
nr_ser_p int,
nazwa_p varchar(30),
rozmiar_pad varchar(3),
firma_p varchar(10),
cena_p_$ float
);

INSERT INTO Pady VALUES(15,150,'POWER JPX AP','L','RIDDELL','144.99');
INSERT INTO Pady VALUES(16,160,'POWER JPX SK','L','RIDDELL','144.99');
INSERT INTO Pady VALUES(17,170,'CUSTOM POWER CPK','L','RIDDELL','449.99');
INSERT INTO Pady VALUES(18,180,'CUSTOM POWER CPX 40i','L','RIDDELL','449.99');
INSERT INTO Pady VALUES(19,190,'KOMBINE AP','L','RIDDELL','209.99');
INSERT INTO Pady VALUES(20,200,'KOMBINE LN','L','RIDDELL','209.99');
INSERT INTO Pady VALUES(21,210,'KOMBINE SK','L','RIDDELL','209.99');
INSERT INTO Pady VALUES(22,220,'PHENOM AP','L','RIDDELL','164.99');
INSERT INTO Pady VALUES(23,230,'PHENOM SK','L','RIDDELL','164.99');
INSERT INTO Pady VALUES(24,240,'POWER JPK+ AP','L','RIDDELL','189.99');
INSERT INTO Pady VALUES(25,250,'POWER JPK+ SK','L','RIDDELL','189.99');
INSERT INTO Pady VALUES(26,260,'POWER SPK+ LB/FB','L','RIDDELL','309.99');
INSERT INTO Pady VALUES(27,270,'POWER SPK+ OL/DL','L','RIDDELL','309.99');
INSERT INTO Pady VALUES(28,280,'POWER SPK+ QB/WR','L','RIDDELL','309.99');
INSERT INTO Pady VALUES(29,290,'POWER SPK+ RB/DB','L','RIDDELL','309.99');
INSERT INTO Pady VALUES(30,300,'POWER SPX LB/FB','L','RIDDELL','299.99');
INSERT INTO Pady VALUES(31,310,'POWER SPX OL/DL','L','RIDDELL','299.99');
INSERT INTO Pady VALUES(32,320,'POWER SPX QB/WR','L','RIDDELL','299.99');
INSERT INTO Pady VALUES(33,330,'POWER SPX RB/DB','L','RIDDELL','299.99');
INSERT INTO Pady VALUES(34,340,'PURSUIT YOUTH','M','RIDDELL','64.99');
INSERT INTO Pady VALUES(35,350,'RIVAL JUNIOR VARSITY','M','RIDDELL','94.99');
INSERT INTO Pady VALUES(36,360,'RIVAL VARSITY','L','RIDDELL','124.99');
INSERT INTO Pady VALUES(37,370,'RIVAL YOUTH','M','RIDDELL','59.99');
INSERT INTO Pady VALUES(38,380,'SURGE YOUTH','M','RIDDELL','94.99');
INSERT INTO Pady VALUES(39,390,'XV HD SKILL','L','SCHUTT','189.99');
INSERT INTO Pady VALUES(40,400,'XV HD QB/WR','L','SCHUTT','189.99');
INSERT INTO Pady VALUES(41,410,'O-SEVEN SOFT','L','SCHUTT','95.99');
INSERT INTO Pady VALUES(42,420,'O2 MAXX ALL PURPOSE','L','SCHUTT','235.99');
INSERT INTO Pady VALUES(43,430,'O2 MAXX OL/DL','L','SCHUTT','235.99');
INSERT INTO Pady VALUES(44,440,'O2 MAXX SKILL','L','SCHUTT','235.99');
INSERT INTO Pady VALUES(45,450,'O2 MAXX QB/WR','L','SCHUTT','235.99');
INSERT INTO Pady VALUES(46,460,'VARSITY FLEX 4.0 ALL PURPOSE','L','SCHUTT','165.99');
INSERT INTO Pady VALUES(47,470,'VARSITY FLEX 4.0 SKILL','L','SCHUTT','165.99');
INSERT INTO Pady VALUES(48,480,'AIR MAXX FLEX 2.0 ALL PURPOSE','L','SCHUTT','309.99');
INSERT INTO Pady VALUES(49,490,'AiR Maxx Flex 2.0 OL/DL','L','SCHUTT','309.99');
INSERT INTO Pady VALUES(50,500,'AIR MAXX FLEX 2.0 SKILL','L','SCHUTT','309.99');
INSERT INTO Pady VALUES(51,510,'AiR Maxx Flex 2.0 QB/WR','L','SCHUTT','309.99');
INSERT INTO Pady VALUES(52,520,'XV HD ALL PURPOSE','L','SCHUTT','189.99');
INSERT INTO Pady VALUES(53,530,'XV HD OL/DL','L','SCHUTT','189.99');
INSERT INTO Pady VALUES(54,540,'VISION JR','M','BARNETT','68.90');
INSERT INTO Pady VALUES(55,550,'MARK IV OL-DL','L','BARNETT','115.90');
INSERT INTO Pady VALUES(56,560,'MARK III FB-LB-TE-DE','L','BARNETT','115.90');
INSERT INTO Pady VALUES(57,570,'MARK II RB-DB-WR','L','BARNETT','115.90');
INSERT INTO Pady VALUES(58,580,'MARK I QB-WR','L','BARNETT','115.90');
INSERT INTO Pady VALUES(59,590,'VISION IV FB-LB-TE-OL-DL','L','BARNETT','94.90');
INSERT INTO Pady VALUES(60,600,'VISION III FB-LB-TE-OL-DL','L','BARNETT','94.90');
INSERT INTO Pady VALUES(61,610,'VISION II QB-WR-DB','L','BARNETT','94.90');
INSERT INTO Pady VALUES(62,620,'VISION I QB-WR-DB','L','BARNETT','94.90');
select * from Pady;


create table Spodnie (
id_s int primary key not null auto_increment,
nr_ser_s int,
nazwa_s varchar(30),
rozmiar_spod varchar(3),
firma_s varchar(10),
cena_s_$ float
);
INSERT INTO Spodnie VALUES(63,630,'Velocity Pants','L','NIKE','54.60');
INSERT INTO Spodnie VALUES(64,640,'Poly Spandex','L','CHAMPRO','35.00');
INSERT INTO Spodnie VALUES(65,650,'Stretch Spandex','L','BADGER','32.90');
INSERT INTO Spodnie VALUES(66,660,'Goal Line Youth','M','CHAMPRO','27.93');
INSERT INTO Spodnie VALUES(67,670,'Slotted Waist','L','CHAMPRO','25.13');
INSERT INTO Spodnie VALUES(68,680,'F4535','L','RAWLINGS','41.93');
INSERT INTO Spodnie VALUES(69,690,'High Performance','L','RAWLINGS','54.59');
INSERT INTO Spodnie VALUES(70,700,'Audible Padded','L','ADIDAS','104.00');
INSERT INTO Spodnie VALUES(71,710,'FPL Integrated','L','RAWLINGS','80.50');
INSERT INTO Spodnie VALUES(72,720,'FP147','L','RAWLINGS','67.90');
INSERT INTO Spodnie VALUES(73,730,'F4500P','L','RAWLINGS','63.00');
INSERT INTO Spodnie VALUES(74,740,'F3500P','L','RAWLINGS','63.00');
INSERT INTO Spodnie VALUES(75,750,'F1500P Youth','M','RAWLINGS','55.30');
INSERT INTO Spodnie VALUES(76,760,'YFP147 Youth','M','RAWLINGS','55.30');
INSERT INTO Spodnie VALUES(77,770,'Adult Practice','L','RIDDELL','53.20');
INSERT INTO Spodnie VALUES(78,780,'F45KP','L','RAWLINGS','35.00');
INSERT INTO Spodnie VALUES(79,790,'YF25P Youth D-Flexion','M','RAWLINGS','35.00');
INSERT INTO Spodnie VALUES(80,800,'F2540 Youth','M','RAWLINGS','28.00');
INSERT INTO Spodnie VALUES(81,810,'F4590','L','RAWLINGS','26.60');
INSERT INTO Spodnie VALUES(82,820,'F3500P','L','RAWLINGS','63.00');
select * from Spodnie;

create table Firmy (
id_f int primary key not null auto_increment,
nazwa_f varchar(30),
data_zal int
);

INSERT INTO Firmy VALUES(83,'SCHUTT',1918);
INSERT INTO Firmy VALUES(84,'RIDDELL',1929);
INSERT INTO Firmy VALUES(85,'RAWLINGS',1887);
INSERT INTO Firmy VALUES(86,'SG HELMETS',2011);
INSERT INTO Firmy VALUES(87,'XENITH',2006);
INSERT INTO Firmy VALUES(88,'BARNETT',1991);
INSERT INTO Firmy VALUES(89,'NIKE',1964 );
INSERT INTO Firmy VALUES(90,'CHAMPRO',1987);
INSERT INTO Firmy VALUES(91,'BADGER',1971);
INSERT INTO Firmy VALUES(92,'ADIDAS',1949);
INSERT INTO Firmy VALUES(93,'UNDER ARMOUR',1996);
INSERT INTO Firmy VALUES(94,'Wilson',1913);
INSERT INTO Firmy VALUES(141,'ADAMS',1976);

select * from Firmy;

create table Buty (
id_b int primary key not null auto_increment,
nr_ser_b int,
nazwa_b varchar(40),
rozmiar_but varchar(10),
firma_b varchar(20),
cena_b_$ float
);

INSERT INTO Buty VALUES(95,950,'Vapor Untouchable 2','44-48','NIKE','280.00');
INSERT INTO Buty VALUES(96,960,'C1N Mid Molded 2017 Cleats','44-48','UNDER ARMOUR','224.00');
INSERT INTO Buty VALUES(97,970,'Vapor Untouchable Pro 2017','44-48','NIKE','182.00');
INSERT INTO Buty VALUES(98,980,'Spotlight','44-48','UNDER ARMOUR','161.00');
INSERT INTO Buty VALUES(99,990,'Force Savage Pro D','44-48','NIKE','140.00');
INSERT INTO Buty VALUES(100,1000,'Freak X Carbon Mid MC 2017','44-48','ADIDAS','140.00');
INSERT INTO Buty VALUES(101,1010,'Hammer D','44-48','UNDER ARMOUR','140.00');
INSERT INTO Buty VALUES(102,1020,'Alpha Menace Pro MID','44-48','NIKE','140.00');
INSERT INTO Buty VALUES(103,1030,'Highlight Moulded MC','44-48','UNDER ARMOUR','175.00');
INSERT INTO Buty VALUES(104,1040,'Freak X Carbon Low MC 2017','44-48','ADIDAS','140.00');
INSERT INTO Buty VALUES(105,1050,'Adizero 5-Star 5.0 Low MC','44-48','ADIDAS','154.00');
INSERT INTO Buty VALUES(106,1060,'Vapor Speed 2 TD 2017','44-48','NIKE','126.00');
INSERT INTO Buty VALUES(107,1070,'Nitro Select Mid MC','44-48','UNDER ARMOUR','126.00');
INSERT INTO Buty VALUES(108,1080,'Nitro Select Low MC','44-48','UNDER ARMOUR','120.00');
INSERT INTO Buty VALUES(109,1090,'Nitro Mid MC','44-48','UNDER ARMOUR','133.00');
INSERT INTO Buty VALUES(110,1100,'Nitro Mid D','44-48','UNDER ARMOUR','133.00');
INSERT INTO Buty VALUES(111,1110,'Alpha Menace Varsity Mid','44-48','NIKE','112.00');
INSERT INTO Buty VALUES(112,1120,'Alpha Menace Varsity Mid D','44-48','NIKE','112.00');
INSERT INTO Buty VALUES(113,1130,'Alpha Menace Varsity Mid Youth','40-44','NIKE','98.00');
INSERT INTO Buty VALUES(114,1140,'Fierce Phantom Mid MC','44-48','UNDER ARMOUR','105.00');
INSERT INTO Buty VALUES(115,1150,'Force Savage Shark Mid Moulded','44-48','NIKE','91.00');
INSERT INTO Buty VALUES(116,1160,'Highlight RM','44-48','UNDER ARMOUR','91.00');
INSERT INTO Buty VALUES(117,1170,'Hammer RM','44-48','UNDER ARMOUR','77.00');
INSERT INTO Buty VALUES(118,1180,'Hammer RM Wide Fit','44-48','UNDER ARMOUR','77.00');
INSERT INTO Buty VALUES(119,1190,'Alpha Menace Shark BG Mid Molded Youth','40-44','NIKE','63.00');
INSERT INTO Buty VALUES(120,1200,'Team Hustle D 7 PS Youth','40-44','NIKE','56.00');
select * from Buty;


create table Pilki (
id_pil int primary key not null auto_increment,
nr_ser_pil int,
nazwa_pil varchar(30),
firma_pil varchar(10),
cena_pil_$ float
);
INSERT INTO Pilki VALUES(120,1200,'The Duke(Salute the Service)','WILSON','126.00');
INSERT INTO Pilki VALUES(121,1210,'Slick Training','WILSON','100.00');
INSERT INTO Pilki VALUES(122,1220,'Genuine Official','WILSON','98.00');
INSERT INTO Pilki VALUES(123,1230,'NCAA 1005','WILSON','98.00');
INSERT INTO Pilki VALUES(124,1240,'GST Official','WILSON','98.00');
INSERT INTO Pilki VALUES(125,1250,'GST Leather','WILSON','55.00');
INSERT INTO Pilki VALUES(126,1260,'TDY Composite','WILSON','45.00');
select * from Pilki;


create table ochraniacze_do_spodni (
id_o int not null auto_increment,
nr_ser_o int not null,
nazwa_o varchar(30) not null,
rozmiar varchar(3) not null,
firma_o varchar(10) not null,
cena_o float
);










