
create table calls(
from_id int,
to_id int,
duration int
);
select * from calls;

-- Q.39 Write an SQL query to report the number of calls and the total call duration between each pair of
-- distinct persons (person1, person2) where person1 < person2.
-- Return the result table in any order.
-- person1 person2 call_count total_duration


with cte as (
select case when from_id < to_id then from_id else to_id end as person1,
	   case when from_id<to_id then to_id else from_id end as person2,duration
from calls )

select person1,person2 ,count(*)as call_count,sum(duration) as total_duration from cte group by person1,person2
