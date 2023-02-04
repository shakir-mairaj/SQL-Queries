use qadbt;
select * from Employeeinfo;

insert into Employeeinfo values('sam', 1, 'ohio', 27, 'male');
insert into Employeeinfo values('sam', 8, 'lon', 28, 'male');
insert into Employeeinfo values('ram', 9, 'ban', 29, 'male');

# to get unique names without duplicates
select distinct name from Employeeinfo;

#where clause
select name from Employeeinfo where location='new york';

#and operator
select name from Employeeinfo where location='new york' and age>20;

#or operator
select name from Employeeinfo where (location='new york' and age>20) or location = 'ohio';
select name from Employeeinfo where id = 1 or location = 'ohio';

#to find employess age or location between
select name,age from Employeeinfo where age in(22,23,24,25);
select name,location from Employeeinfo where location in('new york','chicago');

#to print employees whose id lies between 1 and 100
select name, id from Employeeinfo where id between 1 and 100;

#to print employees whose age is not between 25 and 100
select name,age from Employeeinfo where age not between 25 and 100;

