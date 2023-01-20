create Database Aggregate_functions;
use Aggregate_functions;
select count(*) from sakila.actor;
use sakila;
select count(first_name) from actor;
select count(distinct first_name) from actor;
select count(distinct last_name) from actor;
select count(distinct first_name,last_name) from actor;

select count(distinct concat(first_name,last_name)) from actor;
select * from actor where first_name like '%p%';
select count(*) from actor where first_name like '%b%';
select * from actor group by first_name;

select first_name,count(*) from actor group by first_name;
select actor_id,count(*) from actor group by first_name;

select actor_id,concat(first_name,last_name),count(*) from actor group by first_name,last_name;
select min(actor_id) from actor;
select max(actor_id) from actor;
select max(count(*) group by first_name) from actor ;
select first_name,max(actor_id) from actor;
select * from actor where actor_id = (select max(actor_id) from actor) ;
select first_name,last_name from actor order by actor_id asc limit 1;

select first_name,last_name from actor order by actor_id desc limit 1;

select sum(actor_id) from actor;
select first_name,last_name,sum(actor_id) from actor group by first_name;
select avg(actor_id) from actor;
create table Datetime1(person_id int auto_increment,name varchar(20),yob date,tob time, yntob datetime,primary key (person_id));

 insert into Datetime1(name,yob,tob,yntob) values('Abhi','2001-09-30','08:19:21','2001-09-30 08:19:21'),('Prince','2001-09-30','09:19:21','2001-09-30 09:19:21'),('Mani','1999-02-20','09:30:31','1999-02-20 09:30:31');
 select * from Datetime1;
 insert into Datetime1(name,yob,tob,yntob) values ('ABhinay',curdate(),curtime(),now());
 use Aggregate_functions;
 select name,concat(name ,'is' ,year(yob), 'years_old') from Datetime1;
 select name,concat(name ,'is' ,year(curdate())-year(yob), 'years_old') from Datetime1;
 
 
 select date_format('2001-09-30 08:19:31', '%W /%M %Y');
 select date_format('2001-09-30 08:19:31', '%H %i %s');
 select date_format('2001-09-30 08:19:31', '%W %M %Y %a %b %c %d %e %f %g %h %i');
 select name, DATEDIFF(now(),yntob) from Datetime1;
 
 use sakila;
 select first_name,last_name,count(*) from actor where first_name != 'PENELOPE';
 select first_name,last_name from actor where first_name not like '%p%';
 select count(*) from actor where first_name not like '%e%';
 
 select 9 > 10;
 select 'a' < 'b';
 select 'b' > 'c';
 select 1 = 1;
 
 select 1 = 0;
 
 select 'a' = 'b';
 select 'a' = 'A';
 
select 1 = 0 and 1 =1;
 select 10 < 100 and 20  < 21 and 32 < 999 < 0 < 12;
 select 1 = 0 or 1 = 1;
 select actor_id,first_name from actor where actor_id between 2 and 20;
 select actor_id,first_name from actor where actor_id not between 2 and 20;
 select actor_id,first_name from actor where actor_id  in(2,20);
 select actor_id,first_name , case when actor_id > 20 THEN 'Small_id' else 'Big id' end as grade from actor; 
 
 
 select * from actors
 