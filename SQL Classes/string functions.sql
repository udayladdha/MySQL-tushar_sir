-- carh_length gives us the count of character but length function gives us the byte used by that character
-- concat basically joins the characters 
select concat('uday',' ','laddha') from dual; -- only work with strngs and if we use int then it will be converted into str
select concat_ws('-','uday','laddha','bro')from dual; -- here first parameter work as a seperater this is the main difference between concat and concat_ws
select substr('hello',3);-- index position starts from 1 and jo bhi index number denge us position se data milega 
select substr('uday laddha',3,4); -- 2nd parameter gives kitne number of character chaiye
select substr(substr('uday laddha',3,5),3); -- nested substr
select instr('hello','e'); -- this method will give us the index position of the character
select locate('a','rajasthan','3'); -- this method will return a but will start from 3 index number= a dundhna hai rajasthan mai 3rd index select
select ltrim ('    uday');-- removes all the widespaces from left side 
select rtrim ('uday     ');-- removes all the widespaces from right side 
select trim('   uday     ');-- bydeafaulat removes white space from everywhere
select trim(leading ' ' from  '   uday     '); -- removes widespaces from starting 
select trim(trailing ' ' from  '       uday     ');-- removes widespaces from ending 
select trim(leading 'z' from 'zzzzz uday zzz');-- jo bhi character htana hai use ohle kuch nhi hona chaiye
select trim(both 'z' from ' zzzzz uday zzz '); -- ismai z se phle widespace aagya to z nhi trim hoga
select lpad('hello',6,'%'); -- agr hello mai 6 character nhi hai to left mai % add krdo 
select lpad('hellooouu',6,'%');-- agr diye huye character number fulfil ho gye to bche huye character hta dega
select rpad('hell',6,'%'); --  right mai add krdega 
use sakila;
select * from language;
desc language;  -- language id has primary key 
select count(*) from language; -- counts number of rows
-- DML(Data Manipulation Language). crud operatios(create,retrieve,update,delete)
-- insert statement 
insert into language values(10,'portugese1',now()); -- 
insert into language values(null,'portugese',now());