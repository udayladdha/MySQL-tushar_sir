use sakila;
show tables;
desc language;
-- insert (DML-data manipulation language) data we enter should always match the number of column we can't add more or less than column numbers
select * from language;
-- kisi bhi column mai primary key set ho usmai duplicate key nhi hoti
insert into language values(12,'bagdi',now());-- insert method used to insert data 
insert ignore into language values(12,'bagdi',now()); -- ignore kewyword gives only warning instead of error and no error will be effected 
desc language;
insert into language(language_id,name,last_update) values(13,'hindi',now()); -- we can also give column name while inserting data , if we give column name we can change column name sequence
insert into language(name,last_update) values('hindi',now()); -- as fisrt row has auto increment feature set so if we dont give id number it will directly get number of the next 
-- inserting multiple data 
insert into language(name,last_update) values('hindi1',now()),('hindi2',now()),('hindi3',now());
insert into language set language_id=19,name='abc'; -- set is used  as column ka name fir value 

-- creating database
create database test;-- agr vapis is database ko create kra to error dega
use test;
show tables;
create database if not exists test; -- this will not give error if our database already exit it will just skip so we alwasy right if not 
-- ddl statemnt (create) -> table, index , views
create table employee(eid int,ename char(20),email char(20));-- while creating table we need to give its type as well
desc employee;
insert into employee values(1,'uday','uday.u@gl.com');
select * from employee;
insert into employee values(2,'uday',null); -- inserting null values
-- note: whatever type is selceted only that type of data  can be provided like int should have int value only
insert into employee (eid,email)values(2,'uday'); -- jo bhi column a name denge sirf usi mai data enter hoga and dusre mai null ho jayega 
create table employee2(eid int default 0,ename char(20));-- here we used default id number as 0
insert into employee2(ename) values('uday.u@gl.com');-- here as used default id number as 0 so it willnot give null value
select * from employee2;
insert into employee2(eid,ename) values(null,'udl.com');-- but agr null define kr dete hai to dfault value k bad bhi nan value aa jaygi
create table company(SrNo int ,name varchar(20),last_update datetime default now());
show tables;
select * from company;
insert into company values(1,'k.k enterprises',now()); -- we have set timestamp default value still we are giving now() because we have nt mention columns name
insert into company(SrNo,name) values(2,'nischalrndvacomp');-- here we have mentiond column name so we dont need to give timestamp as it is set to default
insert into company (SrNo,name) values (3,'deepak_and_comp'),(4,'gangs_of_wassypur'),(5,'bob the builder') -- inserting multiple values 