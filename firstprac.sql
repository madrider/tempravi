create table Customer_test
(
	Customerid			int		not null unique,
	Customername		varchar(20)	not null,
	address1			varchar(30),
	address2			varchar(30),
	contactnumber		varchar(12) not null,
	postalcode			varchar(10)
);
-------------------------------------------------------------------
CREATE TABLE Employees_test
(
EmployeeId INT NOT NULL PRIMARY KEY,
Name NVARCHAR(255) NULL
);
---------------------------------------------------------------------
CREATE TABLE Contractors_test
(
ContractorId INT NOT NULL PRIMARY KEY,
Name NVARCHAR(255) NULL
);
---------------------------------------------------------------------
CREATE TABLE dbo.TestRethrow_test
(
ID INT PRIMARY KEY
);
-----------------------------------------------------------------------
CREATE type Region2 from varchar(15) NOT NULL
----------------------------------------------------------------------
create default Region1 as 'North America';
----------------------------------------------------------------------
use Training_17Jan2018_Bangalore;
EXEC sp_bindefault 'Region1', 'Region2';
----------------------------------------------------------------------
alter table Customer_test
add Customer_Region1 varchar(15);
select * from Customer_test
------------------------------------------------------------------------
alter table Customer_test
add gender char(1);
select * from Customer_test
-----------------------------------------------------------------------
alter table Customer_test
add constraint ck_gender
check (gender in ('M', 'F','T'));
------------------------------------------------------------------------
CREATE table Order_test
(
	OrdersID		INT		NOT NULL IDENTITY(1000 ,1),
	CustomerId		int		not null,
	OrdersDate		datetime,
	Order_State		char(1)	CONSTRAINT chk_Order_State CHECK(Order_State in ('P','C'))
);
select * from Order_test
--------------------------------------------------------------------------------------
alter table Order_test
add constraint fk_CustOrders FOREIGN KEY (Customerid) REFERENCES Customer_test(Customerid);
-----------------------------------------------------------------------------------------
CREATE SEQUENCE IdSequence2 AS INT 
START WITH 10000 
INCREMENT BY 1;
INSERT INTO Employees_test(EmployeeId,Name)
values(next value for Idsequence1,'Shashank');
INSERT INTO Contractors_test(ContractorId,Name)
values(next value for Idsequence1,'Aditya');
select * from Employees_test
select * from Contractors_test
----------------------------------------------------------------------------------------
