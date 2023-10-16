create table world(
name varchar(30),
continent varchar(30),
area int,
population bigint,
gdp bigint,
primary key(name)
);
select * from world;
 -- Q51.Write an SQL query to report the name, population, and area of the big countries.
-- Return the result table in any order.

 select name,population, area from World where area>='3000000' or population>='25000000'
