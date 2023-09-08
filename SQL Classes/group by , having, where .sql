show databases;
-- alias name - nickname fro readability
use sakila;
select first_name ,concat('Mr ',first_name) as Full_name from actor;-- as full name is alias here
-- limitation of alias
select first_name ,concat('Mr ',first_name) as Full_name from actor where Full_name ='Mr uday';-- this will give error as we cant use alias with where clause 

select first_name ,concat('Mr ',first_name) as Full_name from actor order by full_name;-- but we can sort data using alias 

-- group by()
select first_name ,length(first_name) from actor; -- single row functions jo hr row pr apply hota hai 

-- multiple rows function=> ese function jo multiple rows pr ek sath chle (similar kind values of iktha krke operation krna)
-- similar values ikhta krna (grouped)
-- group pr operation krna (group operations)

show tables;
use world;
show tables;
select * from country;
desc country;
create table t1(id int,city varchar(20));
insert into t1 values(1,"hey");
insert into t1 values(2,"hey2");
insert into t1 values(null,"hey");
select count(*) from t1; -- count(*) y ek ese colum ko slect krega jismai null value nhi hai kyuki y number of rows deta hai
select count(id) from t1;-- bt agr single row pr do and usmai null hoga to usko count nhi krega 
-- so basically it doesn't count null values bydefault
select sum(id) from t1; -- as we know ki primary key unique hoti hai and null nhi ho skta so if we want to count the rows give column with primary key in paranthese
select distinct city from t1; -- unique record deta hai
select count(distinct id) from t1;-- distinct null values of count nhi krta

use world;
show tables;
select * from city;
select count(name)from city where countrycode='afg';
select countrycode from city group by countrycode; 
select distinct countrycode from city ; -- these both gave same value but in distinct we cant use further operation bt in groupby we can 
select countrycode,count(id) from city  group by countrycode ;-- jis column pr group by lga hai sirf vhi column select k sath de skte ho , uske sath or bhi de skte ho but vo same column select k sath necessary hai
select countrycode,count(id),sum(population) as total_population from city  group by countrycode order by total_population desc; -- order by kisi bhi column pr lga skte hai
select concat('country ',countrycode,' has total count of ',count(name), ' and sum is ', sum(population) >500  ) from city group by countrycode;  


-- where clause group function pr apply nhi hota jese sum(population) so we use 'having'

select countrycode,count(id),sum(population) as total_population from city group by countrycode having sum(population) order by total_population desc;

-- having alias k sath bhi use ho skta  

select countrycode,count(id),sum(population) as total_population from city group by countrycode having total_population>500 order by total_population desc;

-- where clause phle filter krta hai fir function chlata hai pr having groupby krke fir function krta hai


select continent  ,count(*) from country 
where continent='europe'
group by continent; -- single column groupby


select continent  ,region,count(*) from country 
where continent='europe'
group by continent,region order by continent , region desc; -- double coloum groupby

select continent  ,region,count(code) from country 
group by continent,region order by continent , region desc; -- here count(code) is group function because 


