#create database insurance;
use insurance;
create table person(driver_id varchar(20) primary key, name varchar(20), address varchar(20));
create table car(license varchar(20) primary key, model varchar(20), year varchar(20));
create table accident(report_no varchar(20) primary key, date date, location varchar(20));
create table owns(driver_id varchar(20), license varchar(20), primary key(driver_id, license));
create table participated(report_no varchar(20), license varchar(20), driver_id varchar(20), damage_amount varchar(20), primary key(report_no, license));
alter table owns add foreign key owns(driver_id) references person(driver_id);
alter table owns add foreign key owns2(license) references car(license);
alter table participated add foreign key participated(report_no) references accident(report_no);
alter table participated add foreign key participated2(license) references car(license);
alter table participated add foreign key participated3(driver_id) references owns(driver_id);
alter table car rename vehicle;
alter table accident change column report_no report_number varchar(20);
alter table person add gender varchar(20);
alter table accident drop location;
alter table participated modify damage_amount int(10);
insert into person(driver_id, name, address) values('1','ashwanth','vadakara');
select * from person;
insert into person(driver_id, name, address) values('2','kothamm','ekm');
insert into person values('3','jaadhu','pkd','m'),('4', 'nikhil', 'aply','m');
insert into person values('5','anand','path','m'),('6', 'shijin', 'clt','m');
select * from person where name like 'a%';
insert into person values('7','akhila','random','f');
select * from person where name like '%a';
select * from person where name like '%kh%';
select * from person where name like '_h%';
select * from person where name like 'k%m';






