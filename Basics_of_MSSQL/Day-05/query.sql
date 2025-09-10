
create table employee(
	id int primary key,
	name varchar(50),
	branch varchar(50),
	salary float
	)

insert into employee(id,name,branch,salary) values
	(1,'Akash','Mech',45000),
	(2,'Mika','EE',35000),
	(3,'Alex','CSE',55000),
	(4,'Smith','EE',65000),
	(5,'Kush','Pie',25000)

select * 
from employee


select *
from employee
where id=1

select * 
from employee
where id!=1

select *
from employee
where id <> 1

select *
from employee
where id>3

select * 
from employee
where id<4

select *
from employee
where id>=3

insert into employee(id,name,branch) values
	(6,'Vikram','IT')

select * from employee

select *
from employee
where salary is null

select * 
from employee
where salary is not null

--like (Pattern matching)

select *
from employee
where name like 'A%'

select * from employee

select *
from employee
where name not like 'A%'



select * 
from employee
where salary = (
				select max(salary)
				from employee
				)

				 
select * 
from employee
where salary in
	(select salary from employee
		where salary between 25000 and 50000
	)


--
select max(salary) as Maximum_Salary
from employee

select salary
from employee

select count(*)
from employee


select count(*) as freq
from employee
where salary = 10000

select * 
from employee


select *
from employee
order by salary desc



use society



select A.Users_id,B.order_no 
from users A 
inner join orders B
on A.Users_id=B.Users_id



select * from books

select * from users
select * from orders

--inner join
select *
from users as A
inner join orders as B
on A.Users_id = B.Users_id
inner join books as C
on B.product_id=C.product_id
where C.price=1500


--left join
select * from books
select * from users
select * from orders

select *
from users as A
left join orders as B
on A.Users_id = B.Users_id


--right join
select * from books
select * from users
select * from orders

select *
from users as A
right join orders as B
on A.Users_id = B.Users_id


--full outer join
select * from books
select * from users
select * from orders

select *
from users as A
full outer join orders as B
on A.Users_id = B.Users_id




--cross join
select * from books
select * from users
select * from orders

select *
from users as A
cross join orders as B


insert into users(Users_id,Email,name) values
	(5,'money@gmail.com','Manu'),
	(6,'chai_sutta@gmail.com','Prakritiksh'),
	(7,'namaz@gmail.com','Shyransh');






	select * from books
select * from users
select * from orders

insert into books(product_id,title,price) values
	(50,'Manosmriti',50),
	(60,'How to quit smoking',6000),
	(70,'Bhagwat Geeta',1800)

insert into orders(order_no,Users_id,product_id) values
	(104,5,50),
	(105,6,60),
	(106,7,70)


select * from books
select * from users
select * from orders


1. find all the books all the users and all the order
select * from books
select * from users
select * from orders

select *
from books as b
full outer join orders as o
on b.product_id=o.product_id
full outer join users as u
on u.Users_id=o.Users_id


2. find all orders with book
select * 
from orders as o
left join books as b
on o.product_id=b.product_id

3.find particular user who has order these books

bookname price username
select * from books
select * from users
select * from orders

select b.title,u.name,b.price
from books as b
inner join orders as o
on b.product_id=o.product_id
inner join users as u
on u.Users_id=o.Users_id
where b.title in ('How to read a book','How to quit smoking','Bhagwat Geeta')


4. find books users has order

select * from books
select * from users
select * from orders

select b.title,u.name
from books as b
inner join orders as o
on b.product_id=o.product_id
inner join users as u
on u.Users_id=o.Users_id



5. find total price of books user has order

select u.Users_id,sum(b.price)
from users as u
inner join orders as o
on u.Users_id=o.Users_id
inner join books as b
on o.product_id=b.product_id
group by u.Users_id

select * from employee



select top 5 * 
from employee
order by salary desc

select * 
from employee
order by salary desc
offset 1 row fetch next 2 rows only


-- limit offset,count
select * from books
select * from users
select * from orders

select u.name,count(*) as freq
from users as u
inner join orders as o
on u.Users_id=o.Users_id
group by u.Users_id,u.name
having count(*)>1
