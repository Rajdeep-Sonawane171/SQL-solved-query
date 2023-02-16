create database sql_challenge;
use sql_challenge;

create table city 
(
    ID INT,
    NAME VARCHAR(17),
    COUNTRYCODE VARCHAR(3),
    DISTRICT VARCHAR(20),
    POPULATION INT
);

INSERT INTO city VALUES(6,'Rotterdam','NLD','Zuid-Holland', 593321);
INSERT INTO city VALUES(3878,'Scottsdale','USA','Arizona', 202705);
INSERT INTO city VALUES(3965,'Corona','USA','California', 124966);
INSERT INTO city VALUES(3973,'Concord','USA','California', 121780);
INSERT INTO city VALUES(3977,'Cedar Rapids','USA','Lowa', 120758);
INSERT INTO city VALUES(3982,'Coral Springs','USA','Florida', 117549);
INSERT INTO city VALUES(4054,'Fairfield','USA','California', 92256);
INSERT INTO city VALUES(4058,'Boulder','USA','Colorado', 91238);
INSERT INTO city VALUES(4061,'Fall River','USA','Massachusetts', 90555);

select * from city;

Q1. Query all columns for all American cities in the CITY table with populations larger than 100000
--> select * from city where countrycode='usa'and population>100000;

Q2. Query the NAME field for all American cities in the CITY table with populations larger than 120000.
-->Q2. Query the NAME field for all American cities in the CITY table with populations larger than 120000;

Q3. Query all columns (attributes) for every row in the CITY table.
--> select * from city;

Q4. Query all columns for a city in CITY with the ID 1661.
--> select * from city where id=1661;

Q5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is
JPN
--> select * from city where countrycode='jpn';

Q6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is
JPN
-->select name  from city where countrycode='jpn';
