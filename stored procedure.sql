create database employee

use employee

create table student
(
	id int identity primary key,
	name varchar(50),
	gender varchar(50),
	salary varchar(50),
	city varchar(50),

)
insert into student values('sameer','male','452','karachi')
insert into student values('sameer','male','452','karachi')
insert into student values('sameer','male','452','karachi')
insert into student values('sameer','male','452','karachi')
insert into student values('sameer','male','452','karachi')
insert into student values('sameer','male','452','karachi')
insert into student values('sameer','male','452','karachi')

select * from student

create procedure spGetEmployee
@name varchar(50),
@gender varchar(50)
as 
begin

select name = @name , gender = @gender from student;


end

exec spGetEmployee 'adsfa','afsda';

create proc spGetEmployeeid
@id int
as
begin 
select * from student where id = @id;
end
exec spGetEmployeeid 2;

create proc spGetEmployeebyIDandName
@id int,
@name varchar(50)
as
begin
select * from student where id = @id and name = @name;
end

exec spGetEmployeebyIDandName 1 ,'sameer';


alter proc spGetEmployeebyIDandName
@id int,
@name varchar(50)
with encryption
as
begin
select name,salary from student where id = @id and name = @name;
end
exec spGetEmployeebyIDandName 1 ,'sameer';

sp_helptext spGetEmployeebyIDandName;