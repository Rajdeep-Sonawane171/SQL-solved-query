
create table project(
project_id int,
employee_id int,
primary key(project_id,employee_id),
foreign key(employee_id) references employee2(employee_id)
);
create table employee(
employee_id int,
name varchar(30),
experience_years int,
primary key(employee_id)
);
select * from project;
select * from employee;

-- Q47.Write an SQL query that reports the most experienced employees in each project. In case of a tie,
-- report all employees with the maximum number of experience years. Return the result table in any order.


select project_id,employee_id from(
select p.project_id,e.employee_id,e.experience_years,dense_rank() over(order by experience_years) as rnk 
from project p join employee e on p.employee_id=e.employee_id order by p.project_id,e.employee_id ) d
where rnk =2 group by project_id,employee_id
