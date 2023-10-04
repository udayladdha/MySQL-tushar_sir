use sakila;
create table employees (id int primary key auto_increment, depat varchar(20),salary int	);

insert into employees(depat,salary) values ('hr',200),
('hr',300),('hr',100),('marketing',70),('marketing',50),('marketing',200),('marketing',400),
('dsa',150),('dsa',120),('dsa',40),('dsa',90),('dsa',500);

select * from employees;
alter table employees rename column depat to dept;
select dept ,avg(salary) from employees group by dept;
select avg(salary) from employees;

-- windows function(aggregate function)
-- but it will give result for every row 

select id , dept, salary ,
avg(salary) over () as avg_salary ,
max(salary) over () as max_salary 
from employees; -- over () is a windows function
-- jb over() mai koi value nhi hai use bolte hai no windows , windows is like a group 



select id , dept, salary ,
avg(salary) over (order by salary) as avg_salary ,
max(salary) over () as max_salary 
from employees; -- this is normal sorting 

select id , dept, salary ,
avg(salary) over (partition by dept) as avg_salary
from employees;  -- this is called providing window 
-- partion by ne dept vale group k liye salary ka avg nikala and hr row pr print kr diya

select id , dept, salary ,
sum(salary) over (order by salary) as avg_salary
from employees;  -- this order by gives us the roll up ans , basically it is adding the values of salary by each row
-- yha pr roll up ans mila kyu order by slaary kiya hai and sum bhi salary ka hai
 
select id , dept, salary ,
sum(salary) over (order by dept) as avg_salary
from employees;  -- yha pr slaary ka sum mila hai pure group of dept ka 
-- y roll up ans nhi hai 


select id , dept, salary ,
sum(salary) over (order by salary) as rolling_sum,
sum(salary) over (partition by dept) as partition_sum
from employees; 


select id , dept, salary ,
sum(salary) over (partition by dept) as partition_sum,
sum(salary) over (partition by dept order by salary) as rolling_sum_dept
from employees; 


select * , avg(salary) over (partition by dept ) as dept_avg,
avg(salary) over () as comp_avg 
from employees;  -- bina window k over function pure company pr aggrgate function chlata hai 


select * , min(salary) over (partition by dept ) as dept_min,
min(salary) over () as comp_min
from employees;

select * , min(salary) over (partition by dept order by salary desc ) as dept_min,-- rolled up minimum salary 
min(salary) over () as comp_min-- minimum salary of whole company 
from employees;   


select * , sum(salary) over (partition by dept order by salary) as rolling_dept_salary,
sum(salary) over (partition by dept) as total_dept_salary
from employees;   

-- rank()
select id, dept, salary , rank() over(order by salary) 
from employees;-- hr salary ko ek rank de diya and jo salary same hai unko same rank de diya 8,8 but dusri fir 10 se start hogi
-- jitni rank share hogi utni skip ho jayegi 

select id, dept, salary , rank() over(partition by dept) 
from employees; -- tenno dept k rank 1 sse shuru honge sare dsa ko 1 nakreting ko 1 and hr ko 1


select id, dept, salary , rank() over(partition by dept order by salary) 
from employees;   -- dept k according rank mil gyi  salary ko order by krkre

-- dense_rank. dense rank mai jitni rank share hogi uske bad rank skip NAHI hogi 
select id, dept, salary , rank() over(partition by dept order by salary) ,
dense_rank() over (partition by dept order by salary) as ranking
from employees; 

-- dense_rank mai skip nahi hogi rank mai ho jayegi