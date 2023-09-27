-- JOINS
-- 1. inner join
-- 2. left outer join
-- 3. right outer join
-- 4. self join 
-- 5. cartesian join 
-- 6.full outer join
show databases;
use employees;
show tables;
select * from employees;
select * from salaries;
-- cartesian join/cross join
select * from employees cross join departments; -- cartesian join/cross join

-- inner join 

-- inner join gives us the all the common record of the tables rest all it will not give  

select * from salaries s inner join employees e on s.emp_no=e.emp_no; -- here all records will come where salary and emp_np columns will have comon recors 

-- left outer : left column ka sara data to display hota hai but sath mai right column mai jo bhi comoun hai left se vo bhi display hota hai

select * from salaries s left outer join employees e on s.emp_no=e.emp_no;

use test;
show tables;
drop table palindrom,houses,customer,country;

-- createing the 2 tables to show how left join works 

create table left_join (user_id int , name varchar(20), salary int);
insert into left_join (user_id,name,salary) values(1,'uday',12343);
insert into left_join (user_id,name,salary) values(2,'nischal',4565);
insert into left_join (user_id,name,salary) values(3,'parveen',567568);
insert into left_join (user_id,name,salary) values(4,'ram',5656);
insert into left_join (user_id,name,salary) values(5,'sham',252);
select * from left_join;

create table left_join2 (user_id int , name varchar(20), salary int);
insert into left_join2 (user_id,name,salary) values(1,'usha',12343);
insert into left_join2 (user_id,name,salary) values(2,'riska',4565);
insert into left_join2 (user_id,name,salary) values(3,'vashu',567568);
select * from left_join2;

delete from left_join where name in ('usha','riska','vashu');

set sql_safe_updates=0;
-- left outer join
select * from left_join as le left outer join left_join2 as le2 on le.user_id=le2.user_id; -- here we used left outer join where whole data of left colum and the common data of both the columns came as result 
 
 
 -- right outer join 
 select * from left_join le right outer join left_join2  le2 on le.user_id = le2.user_id; -- here we used right  outer join where whole data of right colum and the common data of both the columns came as result 

-- union: Dono tables mai sari values ek bar ana

select user_id from left_join    -- user id in left_join table were 12345
union
select user_id from left_join2 ;-- -- user id in left_join2 table were 123

-- so in result of union we got 12345 as they were unique values in both the tables 
-- while using union number of column name after selct should be same in both the tables, and all the values will be printed but only one time repeated values will also come only one time

-- full outer join
-- to use full outer join we do union of left join and right join

select * from left_join le left outer join left_join2 le2 on le.user_id=le2.user_id
union 
select * from left_join le right outer join left_join2 le2 on le.user_id=le2.user_id;



use employees;
show tables;
select * from employees;
select * from salaries;
-- full outer join on emloyees data 
select * from employees e left join salaries s on e.emp_no=s.emp_no
union
select * from employees e right join salaries s on e.emp_no=s.emp_no;

use test;
show tables;
select * from left_join;
select * from left_join2;

-- self joins
select * from left_join le join left_join le2 on 
le.user_id = le2.user_id where le2.salary =12343 