
create table departments(
id int ,
name varchar(30),
primary key(id)
);
create table students(
id int,
name varchar(30),
department_id int,
primary key(id)
);

insert into departments values(1, 'Electrical Engineering'),
(7, 'Computer Engineering'),
(13, 'Business Administration');
select * from departments;

insert into students values(23, 'Alice' ,1),
(1, 'Bob' ,7),
(5, 'Jennifer', 13),
(2, 'John' ,14),
(4, 'Jasmine', 77),
(3, 'Steve' ,74),
(6, 'Luis', 1),
(8, 'Jonathan' ,7),
(7, 'Daiana', 33),
(11, 'Madelynn' ,1) ;
select * from students;

--  Q38.Write an SQL query to find the id and the name of all students who are enrolled in departments that no
-- longer exist. Return the result table in any order.

select s.id,s.name from departments d right join students s on d.id=s.department_id where d.id is null
