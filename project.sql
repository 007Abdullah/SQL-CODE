create database getup

use getup

create table data
(
	id int identity primary key,
	username varchar(50),
	pasword varchar(50),
	name  varchar(50),
	fname  varchar(50),
	addres  varchar(50),
	gender  varchar(50),
	phoneno  varchar(50),
	nic  varchar(50),
)
select * from data
delete data