
create table employees(
id int,
name varchar(30),
primary key(id)
);
create table employeeuni(
id int,
unique_id int,
primary key(id,unique_id)
);

select * from employees;

insert into employeeuni values(3, 1),
(11, 2),
(90, 3);

insert into employees values(1,'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

select * from employeeuni;

--Write an SQL query to show the unique ID of each user, If a user does not have a unique ID replace just show null. Return the result table in any order
select e1.unique_id,e.name from employees e left join employeeuni e1 on e.id =e1.id order by e.name;
