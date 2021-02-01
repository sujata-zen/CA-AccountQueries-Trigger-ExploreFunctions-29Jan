use WFA3DotNet

/*create table e(
date1 date
);

insert into e(date1) values('12-02-2020');
insert into e values('12/08/1999');
select * from e*/

create table EmployeeCA1
(
	Empid int not null primary key identity(1,1),
	EmpName varchar(20)not null,
	EmpDOB date,
	EmpDept varchar(20),
	EmpSal float,
	EmpMobileNo bigint UNIQUE,
	EmpLocation varchar(20)
	CHECK(EmpLocation = 'Pune' or EmpLocation = 'Hyderabad' or EmpLocation = 'Banglore')
);
select * from EmployeeCA1
truncate table Employeeca1

insert into EmployeeCA1 values('Sujata','07/06/1999','Developement',29229.68,9273464720,'Hyderabad');
insert into EmployeeCA1 values('Bhavika','07/06/1999','Testing',25980.68,9263744720,'Pune');
insert into EmployeeCA1 values('Dharmesh','12/08/1999','Marketing',32000.56,8713490923,'Banglore');
insert into EmployeeCA1 values('Sayli','02/19/2001','Developement',21229.28,8003464720,'Pune');
insert into EmployeeCA1 values('Harshada','06/27/1998','Sales',72263.73,6351749376,'Banglore');
insert into EmployeeCA1 values('Priyansh','09/24/2001','Testing',29229.90,5459364720,'Hyderabad');
insert into EmployeeCA1 values('Vihaan','12/12/1999','Developement',98229.68,4284639670,'Pune');
insert into EmployeeCA1 values('Gitanjali','07/07/2000','Marketing',233699.99,3263864720,'Banglore');


--ASCII - prints ascii value of given character(here EmpName first character)

select ASCII(EmpName) AS Asciivalue
from EmployeeCA1

--SUBSTRING - Extracts some characters from given string
select SUBSTRING(EmpLocation, 2, 4) AS ExtraChars
from EmployeeCA1

--TRIM - Deleting some characters from given string
select TRIM('ing' FROM 'Marketing') AS TrimString;

--REVERSE
select REVERSE('Banglore');

--LEN - Length of strings
select LEN(EmpLocation) AS LengthLoc
from EmployeeCA1

--CHARINDEX
select CHARINDEX('S', EmpName) AS EmpChars
from EmployeeCA1

--UPPER - Converts strings into upppercase
select UPPER(EmpDept)
from EmployeeCA1

--LOWER - Converts strings into Lowercase
select LOWER(EmpDept)
from EmployeeCA1

--SOUNDEX - Evaluate similarity between two strings
select SOUNDEX('Priyansh'),SOUNDEX('Vihaan');

--CONCAT
select CONCAT(EmpDept,' Field') AS ConcatString
from EmployeeCA1

--AVG
select AVG(EmpSal) AS AvgSal
from EmployeeCA1

--MAX
select MAX(EmpSal) AS MaxSal
from EmployeeCA1

--MIN
select MIN(EmpSal) AS MinSal
from EmployeeCA1

--SUM
select SUM(EmpSal) AS SumSal
from EmployeeCA1

--COUNT
select COUNT(EmpMobileNo) AS CountOfNo
from EmployeeCA1

--