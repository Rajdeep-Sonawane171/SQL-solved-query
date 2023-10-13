create table customer(
customer_id int,
product_key int,
foreign key (product_key) references product4(product_key)
);
create table product(
product_key int,
primary key(product_key)
);
select * from customer;
select * from product;

-- Q46. Write an SQL query to report the customer ids from the Customer table that bought all the products in
-- the Product table.Return the result table in any order

select c.customer_id
from customer c  left join product p on c.product_key=p.product_key group by customer_id having count(customer_id)=2
