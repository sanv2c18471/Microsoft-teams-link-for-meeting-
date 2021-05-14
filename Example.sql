create database Example;
use Example;

create table Worker(
worker_id int primary key auto_increment,
first_name varchar(30),
last_name varchar(30),
salary int,
JOD datetime,
department varchar(20));
 
 
insert into Worker(first_name,last_name,salary,JOD,department) values ('ram','krishna',10000,'2021-02-14 09.00.00','HR');
insert into Worker(first_name,last_name,salary,JOD,department) values ('varun','krishna',15000,'2011-06-12 09.00.00','Admin');
insert into Worker(first_name,last_name,salary,JOD,department) values ('seetha','lakshmi',20000,'2020-05-15 09.00.00','Account');
insert into Worker(first_name,last_name,salary,JOD,department) values ('priya','sundar',39000,'2018-07-11 09.00.00','HR');
 insert into Worker(first_name,last_name,salary,JOD,department) values ('ram','krishna',40000,'2000-05-10 09.00.00','IT');
 
 select * from Worker;
 
--alias
select first_name as WORKER_NAME from Worker;
--upper_case
select upper(last_name) from Worker;
 --unique_value(distinct)
 select distinct department from Worker; 
 --first 3 character 
 select substring(first_name,1,3) from Worker;
 --position of a in krishna
 select instr (last_name,binary'a') from Worker where last_name='krishna';
 --removing whitespace from right side firstname
 select rtrim (first_name) from Worker;
 --removing whitespace from left side department
select ltrim (department) from Worker;
--unique values of dep and length
select distinct length(department) from Worker;



select replace(first_name,'a','A') from Worker;

select concat(first_name,' ',last_name) as Complete_Name from Worker;

select *from Worker order by first_name asc;

select *from Worker order by first_name asc,department desc;
select *from Worker where first_name in('priya','ram');
select *from Worker where first_name not in('priya','ram');
select *from Worker where department ='admin';
select *from Worker where department like 'admin%';
select *from Worker where first_name ='%a';
select *from Worker where first_name ='____a';

