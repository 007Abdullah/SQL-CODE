create database telephone_Connection
go
use telephone_Connection
/*information talble name,telephone etc*/
create table info
(
	id int identity primary key,
	Name varchar(50),
	Telephoneno varchar(50),
	[Address]  varchar(50),
	City varchar(50),
	Mobile varchar(50),
	Connection varchar(50)
	 
)

select * from info