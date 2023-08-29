select database(); -- this is the way to check on which database we are working on
show databases;
use world;
show tables;
desc city;  -- desc is used to show columns in a table 
select * from sakila.actor; -- this is the way to use another data without using show database
-- where clause is a powerful tool use to filter data
select * from sakila.actor where actor_id<7; 
use sakila;
show tables; 
select * from actor; -- select keyword is used with table name 
select * from actor where last_name >"b"; -- we can use string to filter our data
select * from film;
select * from film where title like 'a%'; -- % ka mtlb 0 and 0 se jyada kitne bhi characters aa skte hai
select * from film where title like 'a%r'; -- a se shuru r pr khtm
select * from film where title like '%dinosaur'; -- dinosaur pr khtm hone wale tile 
select * from film where title like '%dinosaur%'; -- beech mai dinosaur hona chaiye aage piche kitne bhi words ho skte hai 
select * from film where description like '%drama%';
select * from film where title like 'a%les';
select * from film where title like 'a_';-- phla word a ho and dusra character kuch bhi ho skta hai  only 2 letter movie
-- underscore ka mtlb ki us jgh pr koi sa bhi caracter ho skta hai
select * from film where title like 'c_c%'; -- first letter c ho second kuch bhi ho third c ho and uske baad kitne bhi ho
-- % denotes 0 or more character and _ denotes only single characters
select title, film_id, release_year, description from film where title like '_c%';
select title, film_id, release_year, description from film where title like 'a%an';
select title, film_id, release_year, description from film where title like '%t___';
select title, film_id, release_year, description from film where title like '_f_i%egg';
select title, film_id, release_year, description from film where title like '__a__%';
-- like keyword is used to make patterns to see the data 



