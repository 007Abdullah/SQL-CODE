create database procger
go 
use procger

create table datas
(
	id int identity primary key,
	name varchar(50),
	fname varchar(50),
	gender varchar(50),
	city varchar(50),
	cnic varchar(50),
)
insert into datas values('Sameer','Younus','Male','Karachi','32145786544')
select * from datas
go
create proc same
as
begin
select * from datas
end
exec same

go
alter proc same
@id int,
@name varchar(50),
@fname varchar(50),
@gender varchar(50),
@city varchar(50),
@cnic varchar(50)
as
begin
update datas set name = @name, fname = @fname , gender = @gender,city = @city ,cnic=@cnic where id = @id;
end

select * from datas