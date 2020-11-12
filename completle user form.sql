create database userinfo

use userinfo

create table userfom
(
	id int identity primary key,
	name varchar(50),
	father varchar(50),
	phone varchar(50),
	addres varchar(50),
	email varchar(50),
	passeord varchar(50)
)

insert into userfom values ('sameer','abdullah','465','456','546','589')

select * from userfom