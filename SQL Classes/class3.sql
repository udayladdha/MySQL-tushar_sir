use sakila;
select * from actor;
-- logical operators AND,OR, NOT
select * from actor where first_name ='nick';
select * from actor where first_name='nick' and actor_id=2; -- AND operator used
select * from actor where first_name ='nick' or actor_id = 3; -- OR operator used agr dono shi hai to dono chlenge and agr koi ek shi hai to ek chlega
select * from actor_info ;
select * from actor_info where film_info like 'animation%' and first_name ='tim'; -- AND operator used with LIKE keyword
select * from actor_info where film_info like 'animation%' and first_name ='goldie' or first_name='nick'; -- using AND OR together with LIKE keyword
select * from actor_info where film_info like 'animation%' and first_name ='goldie2' or first_name='nick'; -- agr AND operator koi result nhi deta to sirf OR operator chlega
select * from film_list;
select category, rating , title from film_list where category = 'sci-fi' and rating ='pg';
select category, rating , title from film_list where category like 'sci-fi' and rating like 'pg' ;-- if we are comapring using exact words we can use like keywoed insted of =
select category , rating, title from film_list where category like 'sci-fi' or category like 'family' and rating like 'pg'; -- here AND operator worked first bcz its priority order is high so first we got result of category as family and rating as pg then we got or operator result
select category , rating, title from film_list where (category like 'sci-fi' or category like 'family' ) and rating like 'pg';-- here we used paranthese to solve our prblem of priority, paranthese tells us which command has to solve first
select 2+2*3;
select(2+2)*3;
-- between operator: used for selction data inside any range
select * from actor where actor_id between 2 and 5; -- agr between mai bdi value phle di and choti baad mai to nhi chlega
select * from actor where actor_id>=2 and  actor_id <=5;-- between operator ese bhi use kr skte hai
select * from actor where first_name between 'b' and 'd'; -- between operator used with strings
select * from actor where actor_id =1 or actor_id=5;
-- in operator 
select * from actor where actor_id in (1,5,13,45,66); -- in operator is used when we fetch data in particular defined value NOTE: it doest not fetch data in range it fetch in particular values
select * from actor where actor_id !=1; -- not equals to
-- NOT operator
select * from actor where not(actor_id=1); -- not operator used

use sakila;
show tables;
select * from actor;
select * from actor where (actor_id between 2 and 7) and (first_name='nick' or first_name= 'ed'); -- Q1
select * from actor where last_name not like "%a%" and last_name not like "%e%"; -- Q2
select * from actor where first_name not in('mathew', 'joe','grace') and actor_id between 1 and 14; -- Q3
select * from actor where (first_name not like '%a%' and last_name not like '%i%') and actor_id between 10 and 20; -- Q4


