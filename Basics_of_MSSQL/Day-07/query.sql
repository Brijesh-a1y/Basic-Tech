
use Employee

select * from employee


select * from employee
select *
from employee
order by SALARY desc

select * ,
row_number() over(order by SALARY desc) as popularity_row_number, 
rank() over(order by SALARY desc) as popularity_rank ,
dense_rank() over(order by SALARY desc) as popularity_dense_rank 
from employee

update employee 
set SALARY=90000
where EMP_ID=5

select * ,row_number() over() 
as popularity from employee order by SALARY desc