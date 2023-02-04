#VIEWS--virtual table
use qadbt;

create view google_info as 
select * from company where name='google';

select * from google_info;

create view Avg_companyemployees as
select name,employees from company group by name having employees > (select avg(employees) from company);