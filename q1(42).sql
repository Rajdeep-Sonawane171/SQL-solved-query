create table sales1(
sale_date date,
fruit varchar(30),
sold_num int,
primary key(sale_date, fruit)
);
select * from sales1;
-- Q42.Write an SQL query to report the difference between the number of apples and oranges sold each day.
-- Return the result table ordered by sale_date

select sale_date,sum(s) as diff from(
select sale_date, case when fruit='apples' then sold_num  else -1* sold_num end as s
from sales) a
group by sale_date
