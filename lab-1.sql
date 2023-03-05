use master
create database university
---to use database university
use university
----create a table named department
create table department(
dept_name varchar(20),
building varchar(15),
budget numeric(15,2),
primary key(dept_name));
insert into department values('Biology','John',75000)
insert into department values('CSE','Watson',90000)
insert into department values('Physics','jonny',85000)
insert into department values('Chemistry','Priter',100000)
insert into department values('ICE','Arshan',65000)
insert into department values('EEE','Max',95000)
-----to show the department table with attributes and values
select*from department
-----delete one tuple
delete from department where dept_name='Biology'
select*from department
----update department
update department set budget=budget*1.05 where budget<85000
select*from department
update 