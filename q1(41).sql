create table warehouse(
name varchar(30),
product_id int,
units int,
primary key(name, product_id)
);
create table products(
product_id int,
product_name varchar(30),
width int,
length int,
height int,
primary key(product_id)
);
select * from warehouse;
select * from products;


select w.name as warehouse_name,sum(w.units*p.height*p.width*p.length) as volume
from warehouse w join products p on w.product_id=p.product_id group by w.name;
