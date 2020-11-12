Create database Telephone
go
use Telephone

create table userfrom
(
	id int identity primary key,
	name varchar(50),
	fname varchar(50),
	age varchar(50),
	username varchar(50),
	[password] varchar(50) 

)
select * from userfrom
go
create proc userlog
as
begin
select * from userfrom 
end

execute userlog

Create table infoation
(
	id int identity primary key,
	name varchar(50),
	TelephoneNO varchar(50),
	Addres varchar(50),
	City varchar(50),
	Mode_of_connection varchar(50),
	type_of_conntion varchar(50)
)
go
create proc ifo
@name varchar(50),
@telephone varchar(50),
@addres varchar(50),
@city varchar(50),
@modeofcon varchar(50),
@typeofconnection varchar(50)
as
begin
select * from infoation where name = @name and TelephoneNO = @telephone and Addres = @addres and City = @city and Mode_of_connection = @modeofcon and type_of_conntion = @typeofconnection
end
go

exec ifo 'samer','sdfa','asdf','asf','asdf','asfd'


delete from infoation
 
 select * from infoation  
 
 create trigger trgafterinsert on infoation
after insert 
as

	declare @Name varchar(50);
	declare @Tele varchar(50);
	declare @Addres varchar(50);
	declare @City varchar(50);
	declare @Mode_of_connection varchar(50);
	declare @type_of_conntion varchar(50);
	declare @show varchar(50);

	select @Name=i.name,@Tele=i.TelephoneNO,@Addres=i.Addres,@City=i.City,@Mode_of_connection=i.Mode_of_connection,@type_of_conntion=i.type_of_conntion  from inserted i;
	set @show='Inserted Record -- after insert';

	insert into infoation(name,TelephoneNO,Addres,City,Mode_of_connection,type_of_conntion)
	
	values(@Name,@Tele,@Addres,@City,@Mode_of_connection,@type_of_conntion);

	print 'After insert trigger fired.'


