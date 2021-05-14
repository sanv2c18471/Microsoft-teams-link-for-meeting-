create database sample;
use sample;
--question1
create table Deparment(
Dept_Id int,
Dept_Name varchar(20) primary key);
select * from deparment;
insert into Deparment values(1,'IT');
insert into Deparment values(2,'CSE');
insert into Deparment values(3,'EEE');
insert into Deparment values(4,'ECE');
insert into Deparment values(5,'MECH');
insert into Deparment (Dept_Name) values('civil');


create table Student(
Stud_id int,
Dept_name varchar(20),
foreign key (Dept_Name) references Deparment(Dept_Name),
Stud_name varchar(20),
Marks int);
insert into Student values(101,'IT','Ram','89'),(102,'CSE','Sam','80'),(103,'EEE','Abi','89'),(104,'ECE','Abi','81'),(105,'MECH','Devi','85');
insert into Student values(106,'IT','Sham','98'),(107,'CSE','Mukul','83'),(104,'EEE','Madhu','98');
insert into Student values (106,'civil','pavi','98');
select * from Student;
select * from deparment;


select d. Dept_name,count(s.Stud_name) from Deparment d 
right join Student s on d.Dept_Name=s.Dept_Name
group by d.Dept_Nmae;

select Dept_Name,count(stud_Name) from Student group by Dept_name;


select * from Deparment d 
right join Student s on d.Dept_Name=s.Dept_Name
where Dept_Id is null;

select * from Deparment where Dept_Id is null;

--question2
create table Employee1(
Emp_Id int not null auto_increment,
primary key (Emp_Id),
Emp_Name varchar(20),
Doj date,
Salary int);

insert into Employee1 (Emp_Name,Doj,Salary)values('ravi','2019-05-21',15000),('samu','2019-06-27',85000),('pavi','2018-06-20',95000),('Arun','2013-05-06',90000);

select * from Employee1;
drop table Employee1;
select Emp_Id,Emp_Name from Employee1 
where Emp_Id%2!=0
order by Emp_Name;



--question3
Create table Student1(
St_Id int not null,
St_Nmae varchar(20),
Subj varchar(20),
mark int);

insert into student1 values(1,'sam','tamil',98),(1,'sam','maths',88),(1,'sam','science',78);
insert into student1 values(2,'ram','tamil',98),(2,'ram','maths',78),(2,'ram','science',68);
insert into student1 values(3,'anu','tamil',68),(3,'anu','maths',40),(3,'anu','science',58);
insert into student1 values(4,'abi','tamil',91),(4,'abi','maths',35),(4,'abi','science',78);

select * from Student1;


select * from Student1 where Subj='maths' limit 3;
select avg(mark) from Student1 where mark >=40;


select St_Nmae,mark
from Student1 where mark>
(select avg(mark) from Student1);


--question5
create table Product(
Pro_Id int primary key,
Pro_Name varchar(20),
Cnt int);

insert into Product values(1,'vaccumcleaner',790);
insert into Product values(2,'hairdryer',999);
insert into Product values(3,'nailpolish',499);
insert into Product values(4,'hairdryer',799);
insert into Product values(5,'nailpolish',299);

select distinct Pro_Name from Product;
select* from Product;



--question6
create table Deparment11(
Dep_Id int  primary key, 
Dep_Name varchar(10));

 

insert into Deparment11 values(1,'IT');
insert into Deparment11 values(2,'HR');
insert into Deparment11 values(3,'Insurance');
insert into Deparment11 values(4,'Med_Coding');

 


select * from Deparment11;

 

create table Logi_Employee1(
Emp_Id int,
Dep_Id int auto_increment,
foreign key (Dep_Id) references Deparment11(Dep_Id),
Emp_Name varchar(10),
salary int,
D_O_J date);

 
drop table Logi_Employee;
insert into Logi_Employee1 values(101,1,'Priya',10000,'1993-10-13');
insert into Logi_Employee1 values(102,2,'Gayu',15000,'1991-09-21');
insert into Logi_Employee1 values(103,3,'Anu',17000,'1999-05-07');
insert into Logi_Employee1 values(104,4,'Ram',10000,'2000-05-28');
insert into Logi_Employee1 values(105,1,'Logi',20000,'1994-10-13');
insert into Logi_Employee1 values(106,2,'Ravi',18000,'1995-09-21');
insert into Logi_Employee1 values(107,3,'Anupama',21000,'1998-05-07');
insert into Logi_Employee1 values(108,4,'Ramya',30000,'2001-05-28');
 
select * from Logi_Employee1;


--question7

create table Product1(
Pro_Id int,
Pro_name varchar(20),
Cnt int);


insert into Product1 values(1,'apple',5);
insert into Product1 values(2,'mango',7);
insert into Product1 values(3,'orange',3);


select * from Product1;
 
select *from Product1
group concat
( 
sum(Cnt) for Pro_name
in(apple,mango,orange)
 )
 as p;
 