use sql_challenge;
create table orders4(
order_number int,
customer_number int,
primary key(order_number));

-- Q57.Write an SQL query to find the customer_number for the customer who has placed the largest
-- number of orders.The test cases are generated so that exactly one customer will have placed more orders than any other customer.

select * from orders;
with cte as (
select count(order_number) as ord,customer_number 
from orders group by customer_number)
select customer_number from cte where ord=(select max(ord) from cte);
