use sql_challenge;
create table customers(
customer_id int,
name varchar(30),
country varchar(30),
primary key(customer_id)
);

create table orders1(
order_id int,
customer_id int,
product_id int,
order_date date,
quantity int,
primary key(order_id)
);

create table product1(
product_id int,
descripion varchar(30),
price int,
primary key(product_id)
);
select * from product1;
select * from orders1;
select * from customers;

-- Write an SQL query to report the customer_id and customer_name of customers who have spent at
-- least $100 in each month of June and July 2020.
-- Return the result table in any order.


with cte as 
         (select c.customer_id, c.name,
                 o.product_id,o.order_date,
                 o.quantity,product.price 
                 from customers c join orders o
                 on c.customer_id=o.customer_id join product
                 on product.product_id=o.product_id where month(o.order_date)>5  ),
 
cte1 as (select customer_id,name,
         sum(quantity*price)as money_spend
		     from cte group by customer_id,month(order_date)
         order by name )
 select customer_id,name
 from cte1 where money_spend>=100 
 group by customer_id having count(*)=2
