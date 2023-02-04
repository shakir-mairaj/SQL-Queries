#SUBQUERIES
use qadbt;
select * from employeeinfo;

create table empdetails(name varchar(10), department varchar(10));
insert into empdetails values('ram','qa');
insert into empdetails values('sam','dev');
select * from empdetails;

#name is common column in both tables
select name from employeeinfo where name = (select name from empdetails where department = 'qa');

alter table empdetails add experience int;
update empdetails set experience = 2 where name = 'ram';
update empdetails set experience = 5 where name = 'sam';

select distinct name from employeeinfo where name = (select name from empdetails where experience > 3);


