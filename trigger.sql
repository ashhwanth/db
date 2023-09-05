create database triggerr;
use triggerr;
create table product(pdtid varchar(20) primary key, price varchar(20), qtyInStock varchar(20));
create table sale(saleid varchar(20) primary key, delivery varchar(20));
create table saleitem(saleid varchar(20) primary key, pdtid varchar(20), qty varchar(20));
alter table saleitem add foreign key saleitem(saleid) references sale(saleid), add foreign key saleitem2(pdtid) references product(pdtid);

create trigger updateAvailableQuantity
after insert
on saleitem
for each row
update product set product.qtyInStock = product.qtyInStock - new.qty where product.pdtid = new.pdtid;

alter table product add column pname varchar(20);
insert into product value('1','30','1000','pen');
insert into sale value('1','clt');
insert into saleitem value('1','1','600');

select * from product;