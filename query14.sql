#PRIMARY KEY-- combination of not null and unique constraint
use qadbt;
create table primtable(empname varchar(10), empid int, primary key(empid)); # empid should have unique and not null values
describe primtable;

#FOREIGN KEY--- refers to the column of the other table usually primary key
create table customerdetails(customerid int, customername varchar(10), address varchar(20),zipcode varchar(10), primary key (customerid));
create table orderrdetails(orderid int, customerid int, amount int, primary key(orderid), foreign key(customerid) references customerdetails(customerid));

insert into customerdetails values(100, 'hales', 'england', '9999');

insert into orderrdetails values(001, 200, 1000); # this wont be allowed as 200 customer id is not already present in customerdetails table
insert into orderrdetails values(002, 100, 2000); # this will work

delete from customerdetails where customerid=100; # this wont work as foreign key is dependent on it.

#ON DELETE CASCADE--if you want to delete records of refernece table along with foreign key table
create table customerdetails2(customerid int, customername varchar(10), address varchar(20),zipcode varchar(10), primary key (customerid));
create table orderrdetails3(orderid int, customerid int, amount int, primary key(orderid), foreign key(customerid) references customerdetails2(customerid) on delete cascade);
insert into customerdetails2 values(101, 'butler', 'england', '9111');
insert into orderrdetails3 values(002, 101, 3000);
delete from customerdetails2 where customerid=101; # this will delete records in both tables due to on delete cascade
select * from customerdetails2;
select * from orderrdetails3;


