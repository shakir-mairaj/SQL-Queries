#Joins and subqueries examples
use qadbt;
create table company(name varchar(20), branch varchar(20), employees int);
insert into company values('google', 'california', 500);
insert into company values('google', 'california', 400);
insert into company values('meta', 'newyork', 450);
insert into company values('oracle', 'sydney', 600);
insert into company values('twitter', 'florida', 800);
insert into company values('meta', 'ohio', 50);
insert into company values('oracle', 'sydney', 900);

select * from company;

create table established(name varchar(20), year int);
insert into established values('google', 1990);
insert into established values('meta', 1992);
insert into established values('oracle', 1995);
insert into established values('twitter', 1999);

select * from established;

#joining two tables
select c.name,c.employees,e.year from company as c join established as e on c.name = e.name;

#to get sum of employees of a company established in year 1990
select c.name,sum(c.employees),c.branch,e.year from company as c join established as e on c.name=e.name group by c.name having year =1990;
