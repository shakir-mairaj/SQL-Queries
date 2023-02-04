#regular expressions
# use like operator and %a to print name starting with letter a and use _b to print name whose 2nd letter is b

use world;
select * from city;

# to print countrycode starting with letter A
select name,countrycode from city where countrycode like 'A%';

#to print countrycode whose second letter is B
select name,countrycode from city where countrycode like '_B%';

#sort columns
use qadbt;
select * from Employeeinfo order by id; #ascending order
select * from Employeeinfo order by id desc; #descending order

