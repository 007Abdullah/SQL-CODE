create database fingetb
go
use fingetb

create table info
(
	id int identity primary key,
	U_id varchar(50),
	name varchar(50)
)

select * from info