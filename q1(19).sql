drop table delivery;
create table delivery
(
	delivery_id int,
	customer_id int,
	order_date date,
	customer_pref_delivery_date date
);

insert into delivery values (1, 1, '2019-08-01' ,'2019-08-02');
insert into delivery values (2, 5,' 2019-08-02 ','2019-08-02');
insert into delivery values(3 ,1,' 2019-08-11',' 2019-08-11');
insert into delivery values (4 ,3,' 2019-08-24',' 2019-08-26');
insert into delivery values (5 ,4,' 2019-08-21',' 2019-08-22');
insert into delivery values (6 ,2,' 2019-08-11',' 2019-08-13');

select * from delivery;
with cte as (select delivery_id,(case when order_date =customer_pref_delivery_date then 1 else 0 end)as immediate
                                from delivery)
select round(sum(immediate) /count(delivery_id)*100,2) as immediate_percentage from cte;

