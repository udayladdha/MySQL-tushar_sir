show databases;
use test;
show tables;
drop table palindrom;
create table palindrom (id int,number int check (number=reverse(number)));-- we used check constraint 
select * from palindrom;
insert into palindrom(id ,number ) values(2,122) ;

create table houses(house_id int ,purchase_price int , sales_price int 
,check(purchase_price<sales_price));-- used check constraint

select * from houses;
insert into houses (house_id,purchase_price,sales_price) values (1,10,120);
insert into houses (house_id,purchase_price,sales_price) values (1,1400,120);

create table customer (c_id int , c_name varchar(50),city varchar(50),foreign key (city) references country(c_name));
create table country  (c_id int , c_name varchar(50) primary key,c_city varchar(50),country varchar(40));

insert into country (c_id,c_name,c_city,country) values (1,'india', 'delhi' ,'india');
select * from country;
insert into customer (c_id,c_name,city) values (1,'delhi','india');
select * from customer;







