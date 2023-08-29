use sakila;
show tables;
select * from sakila.city;  -- calling table name without using use sakila
select fid,title from film_list where fid < 7 and not (fid=4 or fid=6);
-- Sorting
-- if we use like operator we dont use % sign in starting bcz if we have big data it will traverse every row and it will consume high time 
select * from film_list;
-- order by clause (used for data sorting in ascending or descending)
select * from film_list order by category; -- sorting in ascending order by default
select * from film_list order by category desc; -- orting in descending order by default
desc film_list; -- discripton of table
select * from film_list order by 4; -- this is the way to sort data using column number 
select fid,title,category from film_list order by 3; -- if we give colun name then number we have to give accordngly so here fid=1 title=2 category=3 
select fid,title,category from film_list order by price; -- if we dont give clumn name and still we can sort using other column but that column wont be shown
select * from address;
select * from address order by district; -- when we do order by then missing value comes on top
select district, address , address_id from address order by district, address_id; -- here if use two column and in district after order idf cell has two same name then the secnd column will only set order of those name who have 2 same records in first given column like ABU DHABI
-- limit (selecting particular data)
select * from address limit 3 ; -- limit is used to fetch only limited data 
-- first we have two sort every data only then limit works
-- offset (skipping rows)
select * from address limit 3 , 2; -- here 3 is offset  so basically it tells how many rows we have to skip , so after skipping 3 records we need 2 records so we got 4th  and 5th rows
select * from address limit 2 offset 3; -- we can also use offset keyword but here last value haas to be offset and in above case first value is offset
-- dual table is a dummy table which preexist in our sytem where we test our logics
select now() from dual;
-- pseudo column are columns that has spefics meanings and are already available in our system 
 