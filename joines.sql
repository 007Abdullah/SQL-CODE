create database datae
go
use datae

create table razzaq
(
	id int identity primary key,
	name varchar(50),
	fnam varchar(50),
	addres varchar(50),
	cnic varchar(50),
	salary varchar(50),
)

select * from razzaq

create table country
(
	cid int  primary key,
	cname varchar(50)
)
insert into country values(1,'sameer')
insert into country values(2,'sda')
insert into country values(3,'saer')
insert into country values(4,'sar')

create table provinces
(
		p_id int  primary key,
		p_name varchar(50),
		count_id int foreign key references country(cid)
)
insert into provinces values(1,'abdullah',2)
select * from country
select * from provinces

select country.cname,provinces.p_name
from 
provinces
join 
country
on
country.cid=provinces.count_id