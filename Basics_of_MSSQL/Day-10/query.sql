
--How to create view
create view NewEmployee
as
select id,name
from employee


select * from NewEmployee
select * from employee

-- insert,update,delete in view also affect the main table
delete from NewEmployee
where id=1;