
drop table ads;
create table ads
(
 ad_id int,
 user_id int,
 actions varchar(20)
 );
 
 insert into ads values(1, 1, 'Clicked');
 insert into ads values(2,2 ,'Clicked');
 insert into ads values(3, 3, 'Viewed');
 insert into ads values(5 ,5 ,'Ignored');
 insert into ads values(1, 7, 'Ignored');
 insert into ads values(2, 7 ,'Viewed');
 insert into ads values(3, 5, 'Clicked');
 insert into ads values(1 ,4 ,'Viewed');
 insert into ads values(2, 11, 'Viewed');
 insert into ads values(1 ,2 ,'Clicked');

select * from ads;
with cte as (select ad_id,sum(case when actions='clicked' then 1 else 0 end)as clicked,
             sum(case when actions='viewed' then 1 else 0 end)as viewed
 from ads group by(ad_id) )
 select ad_id,(case when clicked+viewed =0 then 0 else round(clicked/(clicked+viewed) *100,2) end)as ctr from cte;
