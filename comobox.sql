create database combox
go
use combox


create table teacher
(
	tid int identity primary key,
	tname varchar(50)
)

insert into teacher values('Sir Talha')
insert into teacher values('Sir Taimoor')
insert into teacher values('Sir Salman')

create table batch
(

	bid int identity primary key,
	bcode varchar(50),
	tech_id int foreign key references teacher(tid)
)

insert into batch values('1071644',1)
insert into batch values('107417',2)
insert into batch values('1071',3)

create table student
(
	sid int identity primary key,
	sname varchar(50),
	batch_id int foreign key references batch(bid)
)

insert into student values('Sameer',1)
insert into student values('Razzaq',2)
insert into student values('Ameen',3)

select * from teacher
select * from batch
select * from student

select teacher.tname,batch.bcode,student.sname
from batch
join
teacher
on
teacher.tid=batch.tech_id
join
student
on
batch.bid=student.batch_id

select tname,bcode,sname,sid from batch,student,teacher where tname = 'Sir Talha'


select * from teacher where tname = 'Sir Talha'