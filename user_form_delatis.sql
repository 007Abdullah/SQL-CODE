create database reg
use reg
create table usr
(
	id int identity primary key,	
	name varchar(50),
	fname varchar(50),
	age varchar(50),
	passwod varchar(40)
)
select * from usr
select name,passwod from usr where name='' and passwod=''
select * from usr