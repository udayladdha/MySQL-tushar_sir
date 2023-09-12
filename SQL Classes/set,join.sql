show databases;
use world;
show tables;
select * from country;
select distinct(continent) from country;
select continent,count(*) ,sum(population) from country group by continent having count(*)>50; -- with aggregated data we can't use where clause and it is aggregate because we used group by here

use sakila;
show tables;
desc actor;
desc actor_info;
select first_name from actor limit 3 ;
select first_name from actor_info order by first_name limit 3;
-- set operations 
-- 1.UNION - phli querry ka output dusri queerrry k sath de deta hai
-- when union is applied we only get distinct values
-- to get full data including duplicate we use UNION ALL
-- union mai total number of column same hone chaiye and data type bhi same hona chaiye , datatype same nhi hoga to pura column type cast ho jayega 

select first_name from actor 
union
select first_name from actor_info;
-- 2. intersect - do querry mai jitni bhi common elements hai vo return kr dega
select first_name from actor 
intersect
select first_name from actor_info;


-- 3. except - jo element first querry mai hai but second mai nhi hai vo return krega

select first_name from actor 
except
select first_name from actor_info;

-- joins - data multiple table se lake combine krna
-- 1. inner join - comman elemetn jo dono table mai present hai
-- 2, left join. - left table is called our first table so left join gives us the full data of left table and the common output of both table
-- 3. right join - right table is called our second table so right join gives us the full data of right table and the common output of both table
-- 4. full outer- ismai sara data aata hai dono table se and common vala bhi ata hai

