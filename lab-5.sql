use university
select *from instructor
select *from department

-----cartesian product
select building ,department.dept_name,salary
from department,instructor
where department.dept_name=instructor.dept_name

----join operation
select building,salary
from department join instructor on
department.dept_name=instructor.dept_name

-----left outer join
select*from department left outer join instructor on
department.dept_name=instructor.dept_name

-----right outer join
select *from instructor right outer join department on
department.dept_name=instructor.dept_name

----full outer join
select *from instructor full outer join department on
department.dept_name=instructor.dept_name

select * from instructor cross join department