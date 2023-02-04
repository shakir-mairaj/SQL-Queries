#creating database
create database Qadbt;
#point to database
use Qadbt;

#create tables
create table Employeeinfo(name varchar(25), id int, location varchar(25), age int);

# to check table schema
describe Employeeinfo;

# to insert values
insert into Employeeinfo values('sam', 1, 'new jersey',21);
insert into Employeeinfo values('ram', 2, 'new york',22);
insert into Employeeinfo values('tam', 3, 'florida',23);
insert into Employeeinfo values('nam', 4, 'chicago',24);
insert into Employeeinfo values('lam', 5, 'texas',25);

#for retrieving records of table
select name,age from Employeeinfo;
select * from Employeeinfo;

#to add or modify column
alter table Employeeinfo add gender varchar(10);
describe Employeeinfo;
alter table Employeeinfo modify gender varchar(20);

#to delete column
alter table Employeeinfo drop gender;
describe Employeeinfo;
alter table Employeeinfo add gender varchar(10);
select * from Employeeinfo; 

#to update records
update Employeeinfo set gender = 'male' where name = 'sam';
update Employeeinfo set gender = 'male' where name = 'ram';
update Employeeinfo set gender = 'female' where name = 'tam';
update Employeeinfo set gender = 'male' where name = 'nam';
update Employeeinfo set gender = 'female' where name = 'lam';
select * from Employeeinfo;

#to delete row
delete from Employeeinfo where name = 'sam';
select * from Employeeinfo; 

#delete database
create database sample;
use sample;
drop database sample;


