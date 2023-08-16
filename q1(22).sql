drop table countries;
create table countries
(
  country_id int,
  country_name varchar(20)
);

insert into countries  values (2 ,'USA');
insert into countries  values (3 ,'Australia');
insert into countries  values (7 ,'Peru');
insert into countries  values (5 ,'China');
insert into countries  values (8 ,'Morocco');
insert into countries  values (9 ,'Spain');

select * from countries;

create table weather
(
 country_id int,
 weather_state int,
 day date
);

insert into weather values(2 ,15 ,'2019-11-01');
insert into weather values(2 ,12, '2019-10-28');
insert into weather values(2 ,12 ,'2019-10-27');
insert into weather values(3 ,-2 ,'2019-11-10');
insert into weather values(3 ,0 ,'2019-11-11');
insert into weather values(3 ,3, '2019-11-12');
insert into weather values(5, 16 ,'2019-11-07');
insert into weather values(5 ,18 ,'2019-11-09');
insert into weather values(5 ,21 ,'2019-11-23');
insert into weather values(7 ,25 ,'2019-11-28');
insert into weather values(7 ,22 ,'2019-12-01');
insert into weather values(7 ,20 ,'2019-12-02');
insert into weather values(8 ,25 ,'2019-11-05');
insert into weather values(8 ,27 ,'2019-11-15');
insert into weather values(8 ,31, '2019-11-25');
insert into weather values(9 ,7 ,'2019-10-23');
insert into weather values(9 ,3, '2019-12-23');

select * from weather;

Write an SQL query to find the type of weather in each country for November 2019.
The type of weather is:
● Cold if the average weather_state is less than or equal 15,
● Hot if the average weather_state is greater than or equal to 25, and
● Warm otherwise.
Return result table in any order.
 
-  with cte as (select distinct(country_id) , (case when avg<=15 then 'cold' when avg>=25 then 'hot' else 'warm' end) as weather_type from (
select *,avg(weather_state) over (partition by country_id) as avg from weather  having  month(day)=11)d  )
select countries.country_name,cte.weather_type from cte join countries on cte.country_id=countries.country_id;
