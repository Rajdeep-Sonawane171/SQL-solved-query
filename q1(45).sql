create table student(
student_id int,
student_name varchar(30),
gender varchar(30),
dept_id int,
primary key(student_id)
);
create table department(
dept_id int,
dept_name varchar(30),
primary key(dept_id)
);
select  * from student;
select * from department;


-- Q.45Write an SQL query to report the respective department name and number of students majoring in
-- each department for all departments in the Department table (even ones with no current students).
-- Return the result table ordered by student_number in descending order. In case of a tie, order them by
-- dept_name alphabetically


select d.dept_name,count(student_name) as student_number
from student s right join department d on s.dept_id=d.dept_id group by d.dept_name
order by student_number desc,dept_name;
