
create table employee(empID int,empName varchar(20),dept varchar(20),salary decimal(20));

select * from employee;

insert into employee(empID,empName,dept,salary) values
(1,'shivam','mech',100000),
(2,'Aakash','mech',200000),
(3,'Akshay','mech',300000),
(4,'Amit','mech',400000),
(5,'Niranjan','mech',500000);


select *
from employee
where salary>100000;



use society;

--describe the table
exec sp_help apt
exec sp_help newApt;

--rename table name
exec sp_rename 'apt','newApt';

--column name change
exec sp_rename 'newApt.phone_no','mobile_no','column'


--column datatype change
alter table newApt
alter column mobile_no float


--drop column
alter table newApt
drop column mobile_no;

--add new column
alter table newApt
add mobile_no varchar(20)


drop table employee;

select*
from employee;

alter table employee
alter column salary float;


delete from employee
where empID=5;

select* from employee;


insert into employee(empID,empName,dept,salary) values
(1,'sharad','HR',200000),
(2,'Aakash','IT',100000),
(3,'Abhishek','Senior HR',250000),
(4,'Kunal','Marketing',400000),
(5,'Sowmya','IT',100000);


update employee
set salary = salary + salary*40/100
where empID = 5;



delete employee
where empID = 3;

select *
from Employee;


exec sp_rename 'employee','friends';

exec sp_help 'friends';

alter table friends
add Address varchar(250);


alter table friends
alter column salary varchar(50);

alter table friends
add phone_no varchar(10);


select * from friends;

update friends
set address='NITJSR'
where empID=5;

exec sp_rename 'friends.phone_no','mobile_no'


