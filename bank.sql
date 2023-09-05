create database bank;
use bank;
create table branch(branchname varchar(20), branchcity varchar(20), assets varchar(20));
create table customer(customername varchar(20), customerstreet varchar(20), customercity varchar(20));
create table loan(loannumber varchar(20), branchname varchar(20), amount varchar(20));
create table borrower(customername varchar(20), loannumber varchar(20));
create table account(accountnumber varchar(20), branchname varchar(20), balance varchar(20));
create table deposit(customername varchar(20), accountname varchar(20));
#alter table loan add foreign key loan(branchname) references branch(branchname);-- 
alter table branch add primary key(branchname);
alter table customer add primary key(customername);
alter table loan add primary key(loannumber);
alter table borrower add primary key(customername, loannumber);
alter table account add primary key(accountnumber);
alter table deposit add primary key(customername, accountname);
alter table loan add foreign key loan(branchname) references branch(branchname);
alter table borrower add foreign key borrower(customername) references customer(customername);
alter table borrower add foreign key borrower2(loannumber) references loan(loannumber);
alter table account add foreign key account(branchname) references branch(branchname);
alter table deposit add foreign key deposit(customername) references customer(customername);
alter table deposit change column accountname accountnumber varchar(20);
alter table deposit add foreign key deposit1(accountnumber) references account(accountnumber);
insert into customer values('Smith','Harison','Harison'), ('Stephen','Paris','Arsenal'), ('Albert','Harison','Harison'), ('David','Melborn','victoria'), ('Robert','Newyork','Newyork');
insert into branch values('Harison','Harison',120000), ('Harisons','Harison',120000), ('victoria','victoria',250000),('Newyork','Newyork',4512587),('Arsenal','Arsenal',78451296);
insert into loan value(124578,'Harison',45000), (124579,'victoria',35000), (124580,'Newyork',25000);
insert into borrower value('Albert',124578), ('David',124579), ('Robert',124580);
insert into account values('147852','Harison',65214),('147853','Newyork',45127);
insert into deposit values('Smith',147852),('Robert',147853),('Albert',147853);

select customername from customer where customername in (select customername from deposit)  and customername not in (select customername from borrower);

select customername from customer where customercity in (select customercity from customer where customername='smith') or customerstreet in (select customerstreet from customer where customername='smith');

select branchname from branch where branchname in (select customername from customer where customerstreet='harison');







