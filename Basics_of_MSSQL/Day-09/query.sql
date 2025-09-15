-- Stored Procedure

-- How to create stored procedure
Create Procedure GetEmployeeDetails()
BEGIN
    select * from employee;
END;

-- Procedure parameters
create Procedure updateAndReturnMarks 
    @StudentID int,
    @Marks int output
as
BEGIN

END;


-- how to execute stored procedure
use society
create procedure retrive_data
as
begin
	select * from Students2024
end;

exec retrive_data


-- how to drop procedure
drop procedure retrive_data


-- how to declare and pass parameter
create procedure retrive_data
	@empID int
as
begin
	select * from Students2024 where ID= @empID;
end;
-- procedure call
exec retrive_data @empID = 4





-- Create procedure checkEmployeeSalary
use Employee


create procedure CheckEmployeeSalary
	@emp_id int
as
Begin
	declare @salary int;

	select @salary=SALARY
	from Employee
	where EMP_ID = @emp_id;

	if(@salary>=50000)
		print 'high salary employee';
	else if(@salary>=30000)
		print 'Medium salary employee';
	else
		print 'low salary employee';

end;

exec CheckEmployeeSalary @emp_id=4;

drop procedure CheckEmployeeSalary;




-- Trigger
predefind table -> inserted, updated,deleted


use society
select * from Students2024
--After Insertion
create trigger trig_Activate_After_Insert
on Students2024
after insert
as
begin
	print 'A new Student record inserted successfully';
end;


insert into Students2024(ID,Name) values
	(11,'Indira the Tiger')


--After deletion
create trigger trig_Activate_After_delete
on Students2024
after delete
as
begin
	print 'A new Student record deleted successfully';
end;

delete from Students2024
where ID=11


--before deletion
create trigger trig_Activate_before_delete
on Students2024
instead of delete
as
begin
	print 'I am going to delete student are you sure??';
end;


delete from Students2024
where ID=10



use Employee
CREATE TABLE SalaryAudit
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    emp_id INT,
    OldSalary INT,
    NewSalary INT,
    ChangeDate DATETIME DEFAULT GETDATE()
);


CREATE TRIGGER trg_AuditSalaryChange
ON employee
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Salary) -- Run only if Salary column is updated
    BEGIN
        INSERT INTO SalaryAudit (emp_id, OldSalary, NewSalary)
        SELECT 
            d.emp_id,
            d.Salary AS OldSalary,
            i.Salary AS NewSalary
        FROM deleted d
        INNER JOIN inserted i ON d.emp_id = i.emp_id;
    END
END;
 
 
update employee set salary=10000 where emp_id=104;
select * from employee
select * from SalaryAudit
 
