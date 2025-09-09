-- how to create database
create database society;

-- how to use database
use society;

-- how to create table
create table apt(flat_no int, Names varchar(50),phone_no varchar(10));

-- display the table
select * from apt;

-- insert the entries in table
insert into apt(flat_no,Names,phone_no) values
(1,'Ramesh','111111111'),
(2,'Ram','211111111'),
(3,'Rama','311111111');

update apt 
set flat_no=20 
where flat_no=2;


delete 
from apt
where flat_no=1;
