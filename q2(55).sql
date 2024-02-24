use sql_challenge;
create table person(
id int,
name varchar(30),
phone_number varchar(30),
primary key(id)
);
create table country(
name varchar(30),
country_code varchar(30),
primary key(country_code));

create table calls1(
caller_id int,
callee_id int,
duration int
);
select * from person;
select * from country;
select * from calls1;

-- Q55. Write an SQL query to find the countries where this company can invest.
-- Return the result table in any order

with cte as(
select id,name,case when substring(phone_number,1,1)=0 then substring(phone_number,2,2) 
else substring(phone_number,1,3) end as country_code
from person),
cte1 as (
select country.name,calls1.duration from cte
join calls1 on cte.id=calls1.caller_id or cte.id=calls1.callee_id
join country on cte.country_code=country.country_code)
select name from cte1 group by name having avg(duration) > (select avg(duration) from cte1)
