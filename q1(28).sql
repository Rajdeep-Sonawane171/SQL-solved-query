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
