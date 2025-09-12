use Employee
select * from employee

--merge two table without duplicate
select EMP_ID,FIRST_NAME,LAST_NAME,BIRTH_DATE,SEX,SALARY,DEPT_ID,SUPER_ID from employee 
union 
select EMP_ID,FIRST_NAME,LAST_NAME,BIRTH_DATE,SEX,SALARY,DEPT_ID,SUPER_ID from employee1 

--merge two table with duplicate
select EMP_ID,FIRST_NAME,LAST_NAME,BIRTH_DATE,SEX,SALARY,DEPT_ID,SUPER_ID from employee 
union all
select EMP_ID,FIRST_NAME,LAST_NAME,BIRTH_DATE,SEX,SALARY,DEPT_ID,SUPER_ID from employee 

use society
select * from users

-- convert string to uppercase
select upper('name') as UpperCase

--convert column string in uppercase
select upper(name) from users


-- convert string to lowercase
select lower('name') as LowerCase

--convert column string in lower
select lower(name) from users

--length of characters in string
select len(122233) as hello;

--length of all string present in name column
select len(name) from users

--before character start like empty space  counted in length
select len('    f') as name


--after character start like empty space not counted in length
select len('f   ') as name

--substring -> substring('shivam',startPostion,length)
--startPosition = 1
select substring('shivam',2,3) as name

--reverse
select reverse(name) from users
select reverse(12233) as numberReverse

--replace
-- syntax : replace(mainSentence,oldWord,newWord)
select replace('Shivam like tea','tea','coffee') as replaceWorking

--replace column value
select replace(name,'Ramu','Kalu') from users


--concate
select concat('Shivam dont',' ','like TV') as hell
select concat('Shivam don''t',' ','like TV') as hell
select concat(name,'',Email) from users as name_email
select concat(name,'',Email,'',Users_id) from users as name_email


--cast
select cast('5000' as int) as salaryInt
select  cast(Users_id as float) from users
select cast(salary as float) from users


--convert
select GETDATE() as todaysdate
--103 -> British date format
select convert(varchar(10),GETDATE(),103) as Date_DDMMYYYY;
select convert(varchar(10),GETDATE(),102) as Date_YYYYMMDD;
select convert(varchar(10),GETDATE(),101) as Date_MMDDYYYY;


