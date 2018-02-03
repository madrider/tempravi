use training 
create table Desig_master(
Design_Code numeric(3) Primary Key,
Design_Name Varchar(30) unique);



insert into desig_master values(101,'HOD');
insert into desig_master values(102,'Professor');
insert into desig_master values(103,'Reader');
insert into desig_master values(104,'Sr. Lecturer');
insert into desig_master values(105,'Lecturer');
insert into desig_master values(106,'Director');



Create Table Department_master(
Dept_code numeric(2) Primary Key,
Dept_Name varchar(30) unique);




insert into department_master values(10,'Computer Science');
insert into department_master values(20,'Electricals');
insert into department_master values(30,'Electronics');
insert into department_master values(40,'Mechanics');
insert into department_master values(50,'Robotics');


Create Table Student_master(
Stud_Code numeric(6) primary key,
Stud_Name varchar(30) not null,
Dept_Code numeric(2) references department_master(dept_code),
Stud_Dob datetime,
Address varchar(30));


insert into Student_master values(1001,'Amit',10,'11-Jan-80','chennai');
insert into Student_master values(1002,'Ravi',10,'1-Nov-81','New Delhi');
insert into Student_master values(1003,'Ajay',20,'13-Jan-82',null);
insert into Student_master values(1004,'Raj',30,'14-Jan-79','Mumbai');
insert into Student_master values(1005,'Arvind',40,'15-Jan-83','Bangalore');
insert into Student_master values(1006,'Rahul',50,'16-Jan-81','Delhi');
insert into Student_master values(1007,'Mehul',20,'17-Jan-82',	null);
insert into Student_master values(1008,'Dev',10,'11-Mar-81',	null);
insert into Student_master values(1009,'Vijay',30,'19-Jan-80',	null);
insert into Student_master values(1010,'Rajat',40,'20-Jan-80','Bangalore');
insert into Student_master values(1011,'Sunder',50,'21-Jan-80',	null);
insert into Student_master values(1012,'Rajesh', 30,'22-Jan-80',null);
insert into Student_master values(1013,'Anil',	20,'23-Jan-80',	'Chennai');
insert into Student_master values(1014,'Sunil',	10,'15-Feb-85',	null);
insert into Student_master values(1015,'Kapil',	40,'18-Mar-81',	null);
insert into Student_master values(1016,'Ashok',	40,'26-Nov-80',	null);
insert into Student_master values(1017,'Ramesh',30,'27-Dec-80',	null);
insert into Student_master values(1018,'Amit Raj',50,'28-Sep-80','New Delhi');
insert into Student_master values(1019,'Ravi Raj',50,'29-May-81','New Delhi');
insert into Student_master values(1020,'Amrit',	10,'11-Nov-80',	null);
insert into Student_master values(1021,'Sumit',	20,'1-Jan-80','Chennai');




Create table Student_Marks(
Stud_Code numeric(6) references student_master(Stud_code),
Stud_Year int  not null,
Subject1 numeric(3),
Subject2 numeric(3),
Subject3 numeric(3));



insert into Student_marks values(1001,	2007,	55,	45,78);
insert into Student_marks values(1002,	2007,	66,	74,88);
insert into Student_marks values(1003,	2007,	87,	54,65);
insert into Student_marks values(1004,	2007,	65,	64,90);
insert into Student_marks values(1005,	2007,	78,	88,65);
insert into Student_marks values(1006,	2007,	65,	86,54);
insert into Student_marks values(1007,	2007,	67,	79,49);
insert into Student_marks values(1008,	2007,	72,	55,55);
insert into Student_marks values(1009,	2007,	71,	59,58);
insert into Student_marks values(1010,	2007,	68,	44,92);
insert into Student_marks values(1011,	2007,	89,	96,78);
insert into Student_marks values(1012,	2007,	78,	56,55);
insert into Student_marks values(1013,	2007,	75,	58,65);
insert into Student_marks values(1014,	2007,	73,	74,65);
insert into Student_marks values(1015,	2007,	66,	45,74);
insert into Student_marks values(1016,	2007,	68,	78,74);
insert into Student_marks values(1017,	2007,	69,	44,52);
insert into Student_marks values(1018,	2007,	null,	78,56);
insert into Student_marks values(1019,	2007,	78,	58,74);
insert into Student_marks values(1020,	2007,	45,	null,65);
insert into Student_marks values(1021,	2007,	null,	79,78);


Create Table Staff_Master(
Staff_Code numeric(8) primary key,
Staff_Name varchar(30) not null,
Des_Code numeric(3) references desig_Master(Design_Code),
Dept_Code numeric(2) references department_master(dept_code),
Staff_dob datetime,
Hiredate  datetime,
Mgr_code numeric(8),
Salary numeric(10,2),
Address varchar(20));



insert into Staff_master values(100001,'Arvind',102,10,'15-Jan-80','15-Jan-03',100006,2000,'chennai');
insert into Staff_master values(100002,'Shyam',102,20,'18-Feb-80','17-Feb-02',100007,12000,'chennai');
insert into Staff_master values(100003,'Mohan',102,10,'23-Mar-80','19-Jan-02',100006,12000,'chennai');
insert into Staff_master values(100004,'Anil',102,20,'22-Apr-77','11-Mar-01',100006,12000,'chennai');
insert into Staff_master values(100005,'John',106,10,'22-May-76','21-Jan-01',100007,32000,'chennai');
insert into Staff_master values(100006,'Allen',103,10,'22-Jan-80','23-Apr-01',100005,42000,'chennai');
insert into Staff_master values(100007,'Smith',103,20,'19-Jul-73','12-Mar-02',100005,62000,'chennai');
insert into Staff_master values(100008,'Ravi raj',102,10,'17-Jun-80','11-Jan-03',100006,12000,'chennai');
insert into Staff_master values(100009,'Rahul',102,10,'16-Jan-78','11-Dec-03',100006,22000,'chennai');
insert into Staff_master values(100010,'Ram',103,10,'17-Jan-79','17-Jan-02',100007,32000,'chennai');



Create Table Book_Master(
Book_code numeric(10) primary key,
Book_name varchar(30) not null,
pub_year int,
Author varchar(30) not null,
book_category  varchar(10) );


select * from book_Master
insert into Book_Master values(10000001,'Let Us C++',2000,'Y.P Karnitkar','Comp Sc');

insert into Book_Master values(10000002,'Mastering VC++',2005,'P.J Allen','Comp Sc');

insert into Book_Master values(10000003,'JAVA Complet Reference',2004,'H. Schild','Comp Sc');

insert into Book_Master values(10000004,'J2EE Complet Reference',2000,'H. Schild','Comp Sc');

insert into Book_Master values(10000005,'Relational DBMS',2000,'B. C Desai','Comp Sc');

insert into Book_Master values(10000006,'Let Us C',2000,'Y.P Karnitkar','Comp Sc');

insert into Book_Master values(10000007,'Intoduction To Algorithams',2001,'Cormen','Comp Sc');

insert into Book_Master values(10000008,'Computer Networks',2000,'Millan','Tanenbaum');

insert into Book_Master values(10000009,'Introduction to O/S',2001,'Millan','Comp Sc');


Create Table Book_Transaction(
Book_code numeric(10) references Book_master(Book_code),
Stud_code numeric(6) references student_master(stud_code),
Staff_code numeric(8) references staff_master(staff_code),
Issue_date  datetime not null,
Exp_Return_date  datetime not null,
Actual_Return_date  datetime);

insert into book_transaction values (10000001,1012,NULL, '2009-07-02', '2009-07-09',NULL)

insert into book_transaction values (10000002,1010,NULL, '2009-07-01', '2009-07-08',NULL)

insert into book_transaction values (10000005,1009,NULL, '2009-06-30', '2009-07-06',NULL)

insert into book_transaction values (10000006,1012,NULL, '2009-06-13', '2009-06-20',NULL)

insert into book_transaction values (10000004,NULL,100001,'2009-07-02','2009-07-09',NULL)


insert into book_transaction values (10000003,NULL,100004,'2009-05-14','2009-05-21',NULL)


insert into book_transaction values (10000007,NULL,100005,'2009-05-21','2009-05-28',NULL)



insert into book_transaction values (10000008,NULL,100006,'2009-05-21','2009-05-28','2009-05-28')

insert into book_transaction values (10000009,1008,NULL, '2009-06-30', '2009-07-06','2009-07-09')

-----------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------
 
create table Customer
(
	Customerid			int		not null unique,
	Customername		varchar(20)	not null,
	address1			varchar(30),
	address2			varchar(30),
	contactnumber		varchar(12) not null,
	postalcode			varchar(10)
);
-------------------------------------------------------------------
CREATE TABLE Employees
(
EmployeeId INT NOT NULL PRIMARY KEY,
Name NVARCHAR(255) NULL
);
---------------------------------------------------------------------
CREATE TABLE Contractors
(
ContractorId INT NOT NULL PRIMARY KEY,
Name NVARCHAR(255) NULL
);
---------------------------------------------------------------------
CREATE TABLE dbo.TestRethrow
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
alter table Customer
add Customer_Region1 varchar(15);
select * from Customer
------------------------------------------------------------------------
alter table Customer
add gender char(1);
select * from Customer
-----------------------------------------------------------------------
alter table Customer
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
  

------------------------ ------------1.4 Simple Queries & Merge Statement-------------
  --1)
  select Stud_Code, Stud_Name , Dept_Code from Student_master
  --2)
  select Staff_Code, Staff_Name , Dept_Code from Staff_Master
  --3)
  select Staff_Name, Salary,dept_code from Staff_Master 
  where Dept_Code in(20, 10 ,40)
  --4)
   select Stud_Code, Subject1,Subject2,Subject3 ,Total_Marks = Subject1 + Subject2 + Subject3
    from Student_Marks
	----5)
	----6)
	select dept_code from Student_master ,Student_Marks 
	where stud_year = DATEPART(YEAR,GETDATE())
	---7)
	 select stud_name,concat(datename(mm,stud_dob),',',datename(dd,stud_dob),' ',datename(yy,stud_dob))
as 
stud_dob from Student_master where datename(dw,stud_dob) like 'S%'
	 -- y not to char----
select stud_Name ,stud_dob ='DD MONTH YYYY') as stud_dob from Student_master
----8)
 select staff_name, staff_code, dept_code, hiredate as [date of joining], year(getdate())-year(hiredate)
as [no. of years in the company] from staff_master 
---9)
select staff_name from staff_master where hiredate < '2000-01-01'
--10)
select stud_name, dept_code,stud_dob 
from Student_master
where Stud_Dob 
between '1980-01-01'  and '1983-03-31' 
--11)
select Stud_Code from Student_Marks
where Subject2 is null
-----------------------------------------------------------------------------------------------------------
------------------------------------------------------1.5---------------------------------------------------
--1)
 select Staff_Name, Dept_Code, Salary 
 from staff_master
 where Salary >20000.
 --2)
 select Staff_Name, Dept_Code, Salary 
 from staff_master
 where Dept_Code != 10
 ---3)

 select Book_Master.book_name, count(book_Transaction.issue_date) from 
Book_Master,Book_Transaction 
where Book_Master.Book_code=Book_Transaction.Book_code
Group by Book_Master.book_name
---4)
List out number of students joined each department last year.
select dept_code ,

--5)
select s.stud_name,r.stud_code from Student_Marks r,Student_master s
where r.stud_code=s.stud_code
--6)--*****-------
select Staff_Name, Hiredate, datename(dw,hiredate) as day 
from Staff_Master 
ORDER BY 
     CASE datename(dw,hiredate)
          WHEN 'Sunday' THEN 1
          WHEN  'Monday' THEN 2
          WHEN  'Tuesday' THEN 3
          WHEN 'Wednesday' THEN 4
          WHEN 'Thursday' THEN 5
          WHEN 'Friday' THEN 6
          WHEN  'Saturday' THEN 7
     END ASC
---7)
select s.staff_code,s.staff_name,d.dept_name from staff_master s join department_master d
on s.dept_code = d.dept_code
join book_transaction b
on s.staff_code = b.staff_code
group by s.staff_code,s.staff_name,d.dept_name
 having count(b.book_code)>1

---8)
 select s.stud_name from student_master s, student_marks sm
where s.stud_code = sm.stud_code and sm.subject1 >= (select max(subject1) from student_marks)
group by s.stud_name
----9)
select s.stud_code,s.stud_name from student_master s, student_marks sm
where s.stud_code = sm.stud_code and sm.subject1 >= (select max(subject1) from student_marks)
group by s.stud_name,s.stud_code
-----10)
 select stud_code,stud_name,dept_name,student_master.dept_code from student_master join department_master 
					on student_master.dept_code=Department_master.dept_code
					group by student_master.stud_code,stud_name,dept_name,student_master.dept_code
					having Student_master.dept_code= (select top 1 xyz.new from (SELECT student_master.dept_code as new,COUNT(*) as mycount 
                                     FROM student_master
                                     group by student_master.dept_code) xyz
									group by xyz.new,XYZ.MYCOUNT
									 order by xyz.mycount desc
									 )
-----11)
  select author,book_code,book_category 
   from book_master 
   where book_code = 
   (select book_code from Book_Master where  book_code not  in 
   (select book_code from book_transaction ) )


----12)

      select stud_code as 'ID',stud_name as 'Name' from student_master
	  union 
	  select staff_code,staff_name from staff_master 
	  where
	  dept_code=20 


----13)

      select stud_code, STUD_NAME FROM student_master
	  where stud_code in (select Stud_Code from Student_Marks
	  where subject1 IS NULL
      or Subject2 is null or Subject3 is null)


-----14)

select stud_code from student_master
where stud_code not in (select stud_code from Book_Transaction)
use training
go

---15

create table customer1
(
customer_id varchar(10) unique not null,
customer_name varchar(MAX) not null,
address1 varchar(MAX),
address2 varchar(Max),
contact_number varchar(20) not null,
postal_code varchar(15))

alter table customer1 
add region varchar(10),
 gender varchar(5);
 insert into customer1 values('ALFKI','AlfredsFutterkiste','Obere Str. 57','Berlin,Germany','030-0074321',12209,NULL,NULL)
  insert into customer1 values('ANATR','Ana Trujillo Emparedados y helados','Avda.dela Constitución 2222','México D.F.,Mexico','(5)555-4729','5021','NA',NULL)
  insert into customer1 values('ANTON','Antonio Moreno Taquería','Mataderos 2312','México D.F.,Mexico','(5) 555-3932',5023,NULL,NULL)
  insert into customer1 values('AROUT','Around the Horn','120 Hanover Sq.','London,UK','(171) 555-7788','WA1 1DP',NULL,NULL)
  insert into customer1 values('BERGS','Berglundssnabbköp','Berguvsvägen 8','Luleå,Sweden','0921-12 34 65','S-958 22',NULL,NULL)
  insert into customer1 values('BLAUS','Blauer See Delikatessen','Forsterstr. 57','Mannheim,Germany','0621-08460',68306,'NA',NULL)
  insert into customer1 values('BLONP','Blondesddslpère et fils','24, place Kléber','Strasbourg,France','88.60.15.31',67000,NULL,NULL)
  insert into customer1 values('BOLID','BólidoComidaspreparadas','C/ Araquil, 67','Madrid,Spain','(91) 555 22 82',28023,'EU',NULL)
  insert into customer1 values('BONAP','Bon app','12, rue des Bouchers','Marseille,France','91.24.45.40',13008,NULL,NULL)
  insert into customer1 values('BOTTM','Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen,Canada','(604) 555-4729','T2F 8M4','BC','')
 

 --16
  UPDATE customer1
SET contact_number = '(604)3332345'
WHERE customer_id='ANATR'


--17
UPDATE customer1
SET region = 'EU',address1='19/2 12th Block, Spring Fields',address2='Ireland - UK'
WHERE customer_id='BOTTM'
---18--
use training 

go
----18
use training

alter table Orders1
alter column Customerld varchar(10)

insert into Orders1 values('AROUT','4-jul-96','P')
insert into Orders1 values('ALFKI','5-jul-96','C')
insert into Orders1 values('BLONP','8-jul-96','P')
insert into Orders1 values('ANTON','8-jul-96','P')
insert into Orders1 values('ANTON','9-jul-96','P')
insert into Orders1 values('BOTTM','10-jul-96','C')
insert into Orders1 values('BONAP','11-jul-96','P')
insert into Orders1 values('ANATR','12-jul-96','P')
insert into Orders1 values('BLAUS','15-jul-96','C')
insert into Orders1 values('HILAA','16-jul-96','P')

select * from Orders1
-------------------------------------------------------------------------------------
---19

go

delete from orders where Order_State='C'

select * from orders
--------------------------------------------------------------------------------------
--20
go

Truncate table orders

select * from orders

insert into orders values('AROUT','4-jul-96','P')
insert into orders values('ALFKI','5-jul-96','C')
insert into orders values('BLONP','8-jul-96','P')
insert into orders values('ANTON','8-jul-96','P')
insert into orders values('ANTON','9-jul-96','P')
insert into orders values('BOTTM','10-jul-96','C')
insert into orders values('BONAP','11-jul-96','P')
insert into orders values('ANATR','12-jul-96','P')
insert into orders values('BLAUS','15-jul-96','C')
insert into orders values('HILAA','16-jul-96','P')

select * from orders
----------------------------------------------------------------------------------
---21

go

update orders
set Order_State='C'
where OrdersDate<'15-jul-96'

select * from orders
-----------------------------------------------1.6-----------------------------------------

--1
create unique index dpt on department_master(dept_name)

--2
insert into Department_master values(1,'home science')

insert into Department_master values(2,'home science')
insert into Department_master values(3,'NULL')
insert into Department_master values(4,'NULL')

--3
CREATE nonclustered index books on
book_transaction(book_code,staff_code,stud_code,issue_date)
insert into Book_Transaction(book_code,staff_code,stud_code,issue_date,Exp_Return_date)
values (10000001,NULL,1009,getdate(),getdate())
--4
select * from sysindexes

--5
create view staffdetails_view 
as
select s.staff_code,s.staff_name,d.dept_name,design_name
from Staff_Master s join Department_master d on s.Dept_Code=d.Dept_code
join Desig_master on s.Des_Code = design_code


--9
create view joining
as
select staff_code,staff_name from Staff_Master where DATEPART(mm,Hiredate)=06
-------------------------------------------------------------------1.7-----------------------------------------
-------------------------------------------------------------------1.7-----------------------------------------


---1


create procedure staffcode
(
@Staff_code numeric(8,0)
)
as
UPDATE Staff_Master set Salary = salary + (salary * 20/100) 
Where DATEpart(yy, getdate())-DATEpart(yy, Hiredate) >2 and 
DATEpart(yy, getdate())-DATEpart(yy, Hiredate) <=5 and
Staff_Code=@Staff_code
UPDATE Staff_Master set Salary = salary + (salary * 25/100) 
Where DATEpart(yy, getdate())-DATEpart(yy, Hiredate) >5 and
Staff_Code=@Staff_code
go


---5
CREATE PROCEDURE STUD
(
@STUD_CODE INT,
@STUD_YEAR INT,
@SUBJECT1 INT,
@SUBJECT2 INT,
@SUBJECT3 INT
)
AS
BEGIN TRY
UPDATE STUDENT_MARKS SET STUD_YEAR=@STUD_YEAR,
                         SUBJECT1=@SUBJECT1,
						SUBJECT2=@SUBJECT2,
						SUBJECT3=@SUBJECT3
						WHERE STUD_CODE = @STUD_CODE            
END TRY
BEGIN CATCH
END CATCH

---task1
USE Training;
 BEGIN TRY INSERT dbo.TestRethrow(ID) VALUES(1); -- Force error 2627, Violation of PRIMARY KEY constraint to be raised. 
 INSERT dbo.TestRethrow(ID) VALUES(1); 
 END TRY BEGIN CATCH PRINT 'In catch block.';
  END CATCH;


--task2
USE Training; 
BEGIN TRY INSERT dbo.TestRethrow(ID) VALUES(1); -- Force error 2627, Violation of PRIMARY KEY constraint to be raised. 
INSERT dbo.TestRethrow(ID) VALUES(1); 
END TRY BEGIN CATCH PRINT 'In catch block.'; 
THROW; 
END CATCH



----------------------------------------2.1-----------------------------------------------------
---1
 select employee_no,employee_name,department_no from employee 
	   where experience > 18;
---2
		
---3
 select book_transaction.book_code,stud_code 
		from book_master join book_transaction 
		on book_master.book_code=book_transaction.book_code
		where actual_return_date>exp_return_date;

---4
select staff_name from staff_master where staff_dob =datepart(mm,getdate());
---5
 select count(book_code) from book_master;
---6
select count(book_name) from book_master 
where book_category='physics' or book_category='chemistry';

----7
 select count(stud_code)+count(staff_code) as Total_member from book_transaction 
where exp_return_date = datepart(dd,getdate());
----8
select round(max(salary),2)as Highest, 
round(min(salary),2) as lowest, 
round(sum(salary),2) as total, 
round(avg(salary),2) as average from staff_master
----9--
 select count(*) from staff_master where staff_code=mgr_code
 ----10--
  select stud_year,count(stud_code) as No_of_students_passed from student_marks 
group by stud_code,stud_year,subject1,subject2,subject3
having subject1>60
				and
					student_marks.subject2>60
					and
						student_marks.subject3>60
	 	
---11---
 select dept_name from department_master join staff_master
			on department_master.dept_code=staff_master.dept_code 
				group by dept_name
				
				having count(staff_name)>10

---12---
    select sum(book_price) from book_master

---13----
   select count(book_master.book_code) as total,book_master.book_category from book_master
      group by book_master.book_code,book_category,book_price
	   having book_price>1000
				and book_category=book_category

----14----
    select count(stud_code) as Total_Count from student_master 
	 where doj=(datepart(yy,getdate())-1)
	       and Dept_Code=10


---------------------------------------------------------2.2-----------------------------------------
----1
SELECT STAFF_NAME,SALARY ,
CASE
WHEN SALARY >=50000 THEN 'A'
WHEN SALARY >=25000 AND SALARY<50000 THEN 'B'
WHEN SALARY>=10000 AND SALARY <25000 THEN 'C'
ELSE 'NO GRADE'
END AS 'GRADE'
FROM STAFF_MASTER
----2
Select SM.STAFF_CODE,SM.STAFF_NAME,SM.DES_CODE,SM.DEPT_CODE,BM.BOOK_CODE,BM.BOOK_NAME,BM.AUTHOR,
5*(DATEDIFF(DD,EXP_RETURN_DATE,GETDATE())) AS 'FINE'
FROM STAFF_MASTER SM JOIN Book_Transaction BT
ON SM.Staff_Code =BT.Staff_code
JOIN BOOK_MASTER BM
ON BT.BOOK_CODE=BM.Book_code
WHERE EXISTS(SELECT STAFF_CODE,Actual_Return_date
			 FROM Book_Transaction
			 WHERE Actual_Return_date IS NULL)
---3
SELECT STAFF_CODE,STAFF_NAME FROM STAFF_MASTER 
WHERE MGR_CODE IN (SELECT MGR_CODE FROM STAFF_MASTER 
					WHERE STAFF_CODE=100006)
-----4
SELECT B.STUD_CODE, DEPT_CODE FROM BOOK_TRANSACTION B JOIN STUDENT_MASTER S
ON B.STUD_CODE=S.STUD_CODE 
GROUP BY B.STUD_CODE,DEPT_CODE,BOOK_CODE
HAVING BOOK_CODE IN (SELECT Book_code FROM Book_Transaction WHERE Staff_code 
IN (SELECT T.STAFF_CODE FROM Department_master D 
JOIN STAFF_MASTER T ON D.Dept_code = T.Dept_Code JOIN Student_master S 
ON D.Dept_code =S.DEPT_CODE
WHERE S.DEPT_CODE= T.DEPT_CODE))
-----5
SELECT AUTHOR FROM 
	WHERE BOOK_CATEGORY IN ( SELECT BOOK_CATEGORY FROM BOOK_MASTER WHERE AUTHOR ='DAVID GLADSTONE')
----6
SELECT S.STUD_CODE,S.STUD_NAME,D.DEPT_NAME,SUM(SUBJECT1+SUBJECT2+SUBJECT3) AS 'TOTAL MARKS',(SUBJECT1+SUBJECT2+SUBJECT3)/3 AS 'AVERAGE MARKS',
CASE 
WHEN (SUBJECT1+SUBJECT2+SUBJECT3)/3 >80 THEN 'E'
WHEN (SUBJECT1+SUBJECT2+SUBJECT3)/3>=70 AND (SUBJECT1+SUBJECT2+SUBJECT3)/3<=80 THEN 'A'
WHEN (SUBJECT1+SUBJECT2+SUBJECT3)/3>=60 AND (SUBJECT1+SUBJECT2+SUBJECT3)/3<=70 THEN 'B'
ELSE 'F'
END AS 'GRADE'
FROM STUDENT_MASTER S JOIN STUDENT_MARKS M
ON M.STUD_CODE =S.STUD_CODE
JOIN DEPARTMENT_MASTER D
ON S.DEPT_CODE=D.DEPT_CODE
GROUP BY SUBJECT1,SUBJECT2,SUBJECT3,S.STUD_CODE,S.STUD_NAME,D.DEPT_NAME










				

