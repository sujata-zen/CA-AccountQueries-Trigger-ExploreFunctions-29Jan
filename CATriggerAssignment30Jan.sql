use WFA3DotNet

create table Dept5Tab
(
	DeptId int not null primary key,
	DeptName varchar(20),
	
);

create table Employee5Tab
(
	EmpId int not null primary key identity(1,1),
	EmpName varchar(20),
	Salary float,
    DeptNo int Foreign Key references Dept5Tab(deptid) --here deptno is feoreign key
);

select * from Dept5Tab
select * from Employee5Tab

insert into Dept5Tab values(10,'HR')
insert into Dept5Tab values(11,'Admin')
insert into Dept5Tab values(12,'Sales')
insert into Dept5Tab values(13,'Marketing')

insert into Employee5Tab values('Piu',68.797,10)
insert into Employee5Tab values('Sayali',6.667,10)
insert into Employee5Tab values('Harshali',67.8797,11)
insert into Employee5Tab values('Madhu',23.6797,12)
insert into Employee5Tab values('Nishu',66.97,12)
insert into Employee5Tab values('Vidhi',23.44,10)
insert into Employee5Tab values('Dishu',34.47,13)
insert into Employee5Tab values('Bhumi',78.797,13)
insert into Employee5Tab values('Ruhi',45.697,12)

create table PastEmpTable5( --PastEmployeeTable
empid int,
ename varchar(20),
esal float,
);

--Trigger
create trigger trgAfterUp5 on Employee5Tab --default is after trigger
for update 
as
declare @empid int, --This are the columns of the table we want to delete
@ename varchar(20),
@esal float
insert into PastEmpTable5(empid,ename,esal) values(@empid,@ename,@esal)
print 'After Update trigger fired on Employee5Tab'
select  @empid = Empid,@ename = empname,
@esal = deleted.salary from deleted
insert into PastEmpTable5(empid,ename,esal) values(@empid,@ename,@esal)
print 'After Update trigger fired on Employee5Tab'

select * from Employee5Tab

update Employee5Tab set salary = 80 where empname = 'Piu'

select * from PastEmpTable5



