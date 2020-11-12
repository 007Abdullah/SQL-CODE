create database form

use form

create table info
(

	id int identity  primary key,
	username varchar(50),
	passwrd varchar(50)
)
delete from info
insert into info values('sameer','123')
select * from info