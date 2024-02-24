create table employee3(
employee_id int,
team_id int,
primary key(employee_id));

select * from employee3;

-- Q54.Write an SQL query to find the team size of each of the employees.
-- Return result table in any order.
select * from (
select employee_id,count(team_id) over(partition by team_id ) as team_size from employee ) a
order by employee_id;
