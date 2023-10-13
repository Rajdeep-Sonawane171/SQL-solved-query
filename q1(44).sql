create table employee(
id int ,
name varchar(30),
department varchar(30),
manager_id int,
primary key(id)
);
select * from employee;

-- Q44. Write an SQL query to report the managers with at least five direct reports.
-- Return the result table in any order

select name from (
with cte as (
select * from employee where manager_id is not null)
select e.* from cte c right join employee e on c.manager_id=e.id) d where manager_id is null group by name having count(name)>=5
