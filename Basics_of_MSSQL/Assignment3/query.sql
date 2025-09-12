use society
CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));
CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');






CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));

INSERT INTO Employees VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');





CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');





CREATE TABLE Contacts (ID INT, Name VARCHAR(50), Email VARCHAR(50), Phone VARCHAR(20));
INSERT INTO Contacts VALUES
(1,'Ravi','ravi@gmail.com',NULL),
(2,'Asha',NULL,'9876543210'),
(3,'John',NULL,NULL);




Tasks:
select * from Students2024
select * from Students2025
select * from Employees
select * from Projects
select * from Contacts
--Show a list of all student names (unique only).
select name from Students2024
union 
select name from Students2025

--Show a list of all student names (including duplicates).
select name from Students2024
union all
select name from Students2025


--Display employee names in UPPERCASE and LOWERCASE.
select upper(Name) from Employees

--Find the length of each employee’s name.
select len(Name) from Employees as Length_of_employee_name


--Show only the first 3 letters of each name.
select SUBSTRING(Name,1,3) from Employees as Only_3_Letters_of_each_name

--Replace Finance department with Accounts.
select replace(Department,'Finance','Accounts') from Employees as newDepartment

--Create a new column showing "Name - Department" using CONCAT.
select concat(Name,'-',Department) from Employees as newColumn


--Date Functions (DATEDIFF, DATEADD, GETDATE, NOW)

Tasks:
--Show today’s date using GETDATE().
select GETDATE() as todaysDate


--Find the duration (in days) of each project using DATEDIFF.
select * from Projects
select DATEDIFF(day,StartDate,EndDate) from Projects as Duration_in_Days

--Add 10 days to each project’s EndDate using DATEADD.
select DATEADD(day,10,EndDate) from Projects newEndDate

--Find how many days are left until each project ends. 
select datediff(day,EndDate,GETDATE()) from Projects as DayLeft
