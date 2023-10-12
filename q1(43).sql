create table activity(
player_id int,
device_id int,
event_date date,
games_played int,
primary key(player_id, event_date)
);
select * from activity;

-- Q.43 Write an SQL query to report the fraction of players that logged in again on the day after the day they
-- first logged in, rounded to 2 decimal places. In other words, you need to count the number of players
-- that logged in for at least two consecutive days starting from their first login date, then divide that
-- number by the total number of players.


with cte as (
select *,adddate(event_date,interval 1 day) as next_date from activity)
select round((
select player_id
from cte where (player_id,event_date) in  (select player_id,next_date from cte)) /(select count(distinct(player_id)) from activity),2) as fraction  
