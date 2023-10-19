create table customer(
id int ,
name varchar(30),
primary key(id)
);
create table order(
id int,
customerid int,
primary key(id),
foreign key(customerid) references customer3(id)
);
select * from customer;
select * from order;

-- Q53.Write an SQL query to report all customers who never order anything.
-- Return the result table in any order.

select name  as Customers from Customers where id  not in 
 (select customerId from Orders)
