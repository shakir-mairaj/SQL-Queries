#UNION AND UNION ALL
use qadbt;
create table college(id int, name varchar(10));
insert into college values(1,'tim');
insert into college values(2,'kim');
insert into college values(3,'jim');
insert into college values(4,'tim');
insert into college values(5,'sim');
insert into college values(6,'tim');

create table results(id int, name varchar(10));
insert into results values(7,'lim');
insert into results values(8,'nim');
insert into results values(5,'sim');
insert into results values(10,'bim');
insert into results values(13,'pim');
insert into results values(14,'dim');
insert into results values(1,'tim');

select * from college union (select * from results);  #union combines two tables but eliminates duplicates
select * from college union all (select * from results); #union all includes duplicates as well

#INTERSECT--to fetch common records of two tables
select * from college where id in (select id from results);

#EXISTS--- # if tim name is present in college it will show whole college details otherwise not
select * from college where exists(select * from college where name = 'tim');  


