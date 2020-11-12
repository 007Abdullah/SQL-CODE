create database partice
go
use partice

create table tb1
(
	id int primary key,
	name varchar(50),
	fname varchar(50),
)
insert into tb1 values(1,'sameer','YOunus')
insert into tb1 values(2,'Abdullah','You')
insert into tb1 values(3,'Razzaq','Bhai')

create table tb2
(
	salary varchar(50),
	count_id int foreign key references tb1(id)
)

insert into tb2 values('1500',1)
insert into tb2 values('1500',2)

select * from tb1
select * from tb2


select tb1.id,tb2.count_id 
from
tb2
join
tb1
on
tb1.name= tb2.salary