use master
create database university
use university
create table instructor(
ID varchar(20),
name varchar(15)not null,
dept_name varchar(15),
salary numeric(8,2),
primary key (ID))

insert into instructor values(10101,'Anwar','Physics',68000)
insert into instructor values(10121,'Rakib','Music',85000)
insert into instructor values(10333,'Salam','Biology',90000)
insert into instructor values(14544,'Kamal','Chemistry',100000)
insert into instructor values(15353,'Samad','CSE',95000)
insert into instructor values(12453,'Rafiq','ICE',75000)

select * from instructor 
alter table instructor add course_id char(20)
drop table instructor
