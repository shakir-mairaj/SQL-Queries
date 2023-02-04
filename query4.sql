create database business;
use business;

create table Transactions(month varchar(12), day int, amount int, branch varchar(20));
select * from Transactions;

insert into Transactions values('jan', 1, 200, 'del');
insert into Transactions values('feb', 2, 300, 'sxr');
insert into Transactions values('mar', 3, 450, 'bom');
insert into Transactions values('apr', 11, 500, 'che');
insert into Transactions values('jan', 15, 120, 'kkk');
insert into Transactions values('feb', 1, 220, 'del');
insert into Transactions values('mar', 20, 270, 'bom');
insert into Transactions values('jan', 1, 230, 'del');

#to get total sum of amount
select sum(amount) from Transactions;

#to get total sum of amount for each month using group by
select sum(amount),month from Transactions group by month;

#to get maximum amount generated for each month
select max(amount),month from Transactions group by month;
select max(amount),month,branch from Transactions group by branch;

#to get minimum amount generated for each month
select min(amount),month from Transactions group by month;
select min(amount),month,branch from Transactions group by branch;

#to get average amount generated for each month
select avg(amount),month from Transactions group by month;
select avg(amount),month,branch from Transactions group by branch;

#to get total count of records
select count(*),month from Transactions group by month;

#to get the transactions which occured less than 2 for any month
select count(*),month from Transactions group by month having count(*)<2;

#query using group by,where and having together
select sum(amount),month,branch from Transactions where branch = 'del' or branch = 'bom' group by month having sum(amount)>100;
select sum(amount),branch,month from Transactions where month = 'feb' group by branch having sum(amount)>200;


