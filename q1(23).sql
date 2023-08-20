drop table prices;
create table prices
(
  product_id int,
start_date date,
end_date date,
price int
);
insert into prices values(1, '2019-02-17',' 2019-02-28', 5),
(1, '2019-03-01',' 2019-03-22', 20),
(2, '2019-02-01',' 2019-02-20', 15),
(2, '2019-02-21',' 2019-03-31', 30);

select * from prices;

create table UnitsSold
(
  product_id int,
purchase_date date,
units int
);

insert into UnitsSold values(1,'2019-02-25', 100),
(1,' 2019-03-01', 15),
(2, '2019-02-10', 200),
(2 ,'2019-03-22 ',30) ;

select * from UnitsSold;

Write an SQL query to find the average selling price for each product. average_price should be
rounded to 2 decimal places.

-- select product_id,round(sum(price*units)/sum(units),2) as average_price from (
   select UnitsSold.product_id,prices.price,UnitsSold.units  from prices join UnitsSold on prices.product_id=UnitsSold.product_id
   where UnitsSold.purchase_date between start_date and end_date) d group by product_id;
