use sql_challenge;
create table activity(
player_id int,
device_id int,
event_date date,
games_played int,
primary key (player_id, event_date)
);
select * from activity;
-- Q.56 Write an SQL query to report the device that is first logged in for each player.
-- Return the result table in any order 
with cte as (
select min(event_date) as min_dates 
from activity group by player_id )
select activity.player_id,activity.device_id
from activity inner join cte on activity.event_date=cte.min_dates;
