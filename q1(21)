drop table employee;
create table employee
(
 employee_id int,
 team_id int
);
 insert into employee values (1, 8);
 insert into employee values (2, 8);
 insert into employee values (3, 8);
 insert into employee values (4, 7);
 insert into employee values (5, 9);
 insert into employee values (6 ,9);
 
 select * from employee;

Write an SQL query to find the team size of each of the employees.Return result table in any order
--> with cte as(  select employee_id, count(team_id) over (partition by team_id ) as team_size from employee)
select * from cte order by employee_id;
