use sql_challenge;
create table cinema(
seat_id int auto_increment primary key,
free bool);
select * from cinema;

-- Q58.Write an SQL query to report all the consecutive available seats in the cinema.
-- Return the result table ordered by seat_id in ascending order.
-- The test cases are generated so that more than two seats are consecutively available.

select * from cinema;

select seat_id from (
select * 
,lead(free) over(order by seat_id) as led 
,lag(free) over(order by seat_id) as lg from cinema)a
where free=1 and led=1 or free=1 and lg=1 order by seat_id;
