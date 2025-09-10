
use society

--parent table
create table student(
	id int primary key,
	name varchar(50)
)

select * from  student


insert into student(id, name) values
	(1,'shivam');


insert into student(id, name) values
	(2,'Raj');

alter table student
add number int;

alter table student
alter column number float

-- child table
create table teachers(
	id int primary key,
	subjects varchar(50),
	foreign key(id) references student(id)

)


insert into teachers(id,subjects) values
	(1,'Math');


	
insert into teachers(id,subjects) values
	(2,'Math');

select * from student;
select * from teachers;


delete from student
where id = 1;







create table users(
	Users_id int primary key,
	Email varchar(50) unique,
	name varchar(50)
)

drop table users;


create table books(
	product_id int primary key,
	title varchar(50),
	price varchar(10)
)


select * from users;

select * from books

insert into users(Users_id,Email,name) values
	(1,'ramu@gmail.com','Ramu')

	
insert into users(Users_id,Email,name) values
	(2,'gopal@gmail.com','Gopal')

	
insert into users(Users_id,Email,name) values
	(3,'intorvert@gmail.com','Jai')

	
insert into users(Users_id,Email,name) values
	(4,'extrovert@gmail.com','Ganesh')


insert into books(product_id,title,price) values
		(10,'Ramayan',1500),
		(20,'How to read the book',150),
		(30,'2-state',690),
		(40,'Kalyug',300);

create table orders(
	order_no int primary key,
	Users_id int,
	product_id int,
	foreign key(Users_id) references users(Users_id),
	foreign key(product_id) references books(product_id)
)


select * from orders

insert into orders(order_no,Users_id,product_id) values
	(101,2,20)



	
insert into orders(order_no,Users_id,product_id) values
	(102,1,40),
	(103,1,10)




