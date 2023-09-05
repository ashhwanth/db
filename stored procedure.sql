create database store;
use store;
create table product(pdtid varchar(20) primary key, pname varchar(20), price varchar(20), quantity varchar(20));



call insertproduct('100', 'note','20', '1000');
select * from product;
#call insertproduct('100', 'note','0', '1000');
