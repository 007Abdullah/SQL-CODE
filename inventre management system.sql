create database IMS
go
use IMS


create table regiter
(

	id int identity primary key,
	name varchar(50),
	fname varchar(50),
	username varchar(47),
	[password] varchar(50)

)

select * from regiter



create table logn
(
	id int identity primary key,
	username varchar(50),
	[password] varchar(50)
)

select * from logn

create table purchse
(
	id int identity primary key,
	itemofnam varchar(50),
	priceofitem varchar(50),
	noofitem varchar(50),
	[date] varchar(50)
)

insert into purchse values('Sunsilk','400','5','21/9/19')

select * from purchse

create table stock
(

	id int identity primary key,
	itemofnams varchar(50),
	priceofitems varchar(50),
	noofitems varchar(50),
	[datet] varchar(50)
)

select * from stock
go
create trigger trgafterinsert on purchse
after insert 
as

	declare @itemofname varchar(50);
	declare @priceofitm varchar(50);
	declare @noofitm varchar(50);
	declare @dates varchar(50);
	declare @show varchar(50);

	select @itemofname=i.itemofnam,@priceofitm=i.priceofitem,@noofitm=i.noofitem,@dates=i.date from inserted i;
	set @show='Inserted Record -- after insert';

	insert into stock(itemofnams,priceofitems,noofitems,datet)
	
	values(@itemofname,@priceofitm,@noofitm,@dates);

	print 'After insert trigger fired.'


	insert into purchse values('asfa','asfas','','asfas')
	select * from purchse
	select * from stock

create table sals
(
	id int identity primary key,
	itemname varchar(50),
	noofitm varchar(50),
	amount varchar(50)
)

select * from sals
truncate  table sals
