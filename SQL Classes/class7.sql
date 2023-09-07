-- Difference between varchar and char
-- varcahr (variable character that can be change)
-- char are fixed size datatype

use test;
create table ep1 (name char(20));
insert into ep1 value('hey');
select * from ep1;
select name,length(name) from ep1;
create table ep_var (name1 varchar(20));
insert into ep_var value('A');
select name1,length(name1) from ep_var;
-- varchar retains trailing spaces upto specified coulum width and will truncate the exess  
-- constrain
show databases;
show tables;

-- not null,check ,default ,unique, primary key and foreign key are constraints 

delete from ep_var ; -- delete se sirf data ud jata  hai and roll back bhi kr skte hai
set sql_safe_updates=0;
select * from ep_var;
show tables;
select * from ep1;
-- update
update ep1 set name='uday';
select * from ep1;
drop table ep1; -- structure and data both gets deleted and we can also rollback or undo things
show tables;
select * from  ep_var;
truncate table ep_var;-- faster than delete and can't be rolled back 
-- in background truncate removes everything and the gives us schema back  this is why it is faster then delete



