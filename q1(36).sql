
create table users1(
id int,
name varchar(30),
primary key(id)
);
create table rides(
id int,
user_id int,
distance int,
primary key(id)
);

insert into users1 values (1, 'Alice'),
(2, 'Bob'),
(3, 'Alex'),
(4, 'Donald'),
(7, 'Lee'),
(13, 'Jonathan'),
(19, 'Elvis');
select * from users1;

insert into rides values(1, 1, 120),
(2, 2, 317),
(3, 3, 222),
(4, 7, 100),
(5, 13, 312),
(6, 19, 50),
(7, 7, 120),
(8, 19, 400),
(9, 7, 230);
select * from rides;

-- Q33.Write an SQL query to report the distance travelled by each user.
-- Return the result table ordered by travelled_distance in descending order, if two or more users
-- travelled the same distance, order them by their name in ascending order

select u.name,ifnull(sum(r.distance),0) as travelled_distance from users1 u left join rides r
 on u.id=r.user_id group by u.name order by travelled_distance desc,name ;
 
