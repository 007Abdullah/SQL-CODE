create database users

use users

create table sameers
(
	id int identity primary key,
	name varchar(50),
	fname varchar(50),
	gender varchar(50),
	addres varchar(50),
	phone varchar(50),
	nic varchar(50),
	simtype varchar(50)
)

select * from sameers

delete sameers