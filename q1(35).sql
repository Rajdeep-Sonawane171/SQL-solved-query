
 create table movies
 (
  movie_id int,
title varchar(20)
 );
 
 drop table users;
 create table users
 (
  user_id int,
name varchar(20)
 );
 
 create table movierating
 (movie_id int,
user_id int,
rating int,
created_at date
);

insert into movies values(1, 'Avengers'),
(2, 'Frozen 2'),
(3, 'Joker');

insert into users values(1, 'Daniel'),
(2, 'Monica'),
(3, 'Maria'),
(4, 'James');

insert into movierating values(1, 1, 3, '2020-01-12'),
(1, 2, 4, '2020-02-11'),
(1, 3, 2, '2020-02-12'),
(1, 4, 1, '2020-01-01'),
(2, 1, 5, '2020-02-17'),
(2, 2, 2, '2020-02-01'),
(2, 3, 2, '2020-03-01'),
(3, 1, 3, '2020-02-22'),
(3, 2, 4, '2020-02-25');

select * from movierating;

select u.name,sum(m.rating) as rat from users u right join movierating m on
 u.user_id=m.user_id group by u.name order by rat desc,name limit 1;
 
 select title from (
 select m.title from movies m  right join movierating mr on
 m.movie_id=mr.movie_id where month(created_at)=2 group by (m.title) order by avg(mr.rating) desc,m.title limit 1 ) d ;
 
 
