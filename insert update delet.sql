create database Companydata
go
use Companydata

create table record
(
	id int,
	name varchar(50),
	fname varchar(50),
	salary varchar(50),
	cnic varchar(50)
)
insert into record values('Sameer','Younus','50000','32459')

select * from record