use master 
-----create database
create database Fariha
--use database Fariha
use Fariha

create table CustomerAndSupplier
(
cusl_id CHAR(6) PRIMARy KEY CHECK (cusl_id LIKE('[CS][0-9][0-9][0-9][0-9][0-9]')),
cusl_fname CHAR(15) NOT NULL,
cusl_lname VARCHAR (15),
cusl_address TEXT,
cusl_telno CHAR(12) CHECK(cusl_telno LIKE('[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
cusl_city CHAR(12) DEFAULT 'Rajshahi',
sales_amnt MONEY CHECK(sales_amnt>=0),
proc_amnt MONEY CHECK(proc_amnt>=0)
)
select * from customerAndsupplier
INSERT CustomerAndSupplier
(cusl_id,cusl_fname,cusl_lname,cusl_address,cusl_telno,cusl_city,sales_amnt,proc_amnt) VALUES
('S00045','Fariha','Mahzabin','Sherpur','017-29821056','Sherpur',7,19)



create table item
(
item_id char(6) primary key check (item_id like ('[P][0-9][0-9][0-9][0-9][0-9]')),
item_name char(12),
item_catagory char(10),
item_price float check(item_price>=0),
item_qoh int check(item_qoh>=0),
item_last_sold datetime  default getdate()
)
insert Item(item_id ,item_name,item_catagory,item_price ,item_qoh ,item_last_sold)
values('P00009','Fariha','phone',57.8,23,'3-2-15')
insert Item(item_id ,item_name,item_catagory,item_price ,item_qoh )
values('P00002','MAhzabin','laptop',56.8,23)
select * from Item





create table transactions
(
tran_id char(10) primary key check (tran_id like '[T][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
item_id char(6) foreign key references Item(item_id), 
cusl_id char(6) foreign key references CustomerAndSupplier(cusl_id) ,
tran_type char(1),
tran_quality int check (tran_quality>=0),
tran_date datetime default getdate()

)

insert into transactions(tran_id ,item_id,cusl_id,tran_type,tran_quality) values('T000000001','P00002','S00045','s',10)
insert into transactions(tran_id ,item_id,cusl_id,tran_type,tran_quality) values('T000000002','P00009','S00045','s',10)
select*from transactions
delete from transactions


