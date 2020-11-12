create database test
go
use test

create table tblCustomer
(

	CustomerId int primary key,
	CustomerName nvarchar(50),
	[Address] nvarchar(50),
	City nvarchar(50)
)



insert into tblCustomer values(1,'Sameer','Karachi','Pakistan')
insert into tblCustomer values(2,'Abdullah','Pakistan','karachi')
insert into tblCustomer values(3,'Razzaq','Islamabad','Pakistan')
insert into tblCustomer values(4,'Sono','Karachi','Pakistan')
insert into tblCustomer values(5,'Shazaib','Karachi','Pakistan')

create table tblOrder
(
	OrderID int primary key,
	Item nvarchar(50),
	CustomerID int foreign key references tblCustomer(CustomerId) 
)

insert into tblOrder values(101,'Pen',3)
insert into tblOrder values(102,'Pen',3)
insert into tblOrder values(103,'Pencil',3)
insert into tblOrder values(104,'Notebook',3)
insert into tblOrder values(105,'Calculater',3)
insert into tblOrder values(106,'Calculater',5)

select * from tblCustomer
select * from tblOrder