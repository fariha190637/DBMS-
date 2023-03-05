use university
select dept_name,avg(salary)as avg_salary
from instructor
group by dept_name;

select dept_name,avg(salary)as avg_salary
from instructor
group by dept_name
having avg(salary)>75000

select*from instructor order by salary desc,name asc;

create view faculty as
select ID,name,dept_name
from instructor

CREATE PROCEDURE instruct_proc
AS
BEGIN
select name as authors_name from instructor where ID='10121'
END
EXEC instruct_proc
select*from instructor 