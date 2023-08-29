show databases;
use sakila;
show tables;
-- data ko select krne k liye select commnd use kro
describe actor; -- table ki jankari deta hai
-- DQL 1st statement
select last_name ,last_update from actor;
select * from actor;
show tables;
desc actor_info;
-- projection and selection 
-- selecting a column is projection
select * from actor_info;
select actor_id , actor_id*10 from actor_info;
select * from actor_info;  -- original mai change nhi hua (actor_id*10)
-- where clause
select * from actor_info where actor_id<=10;
select actor_id, first_name from actor_info where actor_id<=10;
select first_name from actor_info where actor_id<=10;

