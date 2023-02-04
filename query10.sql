#STRING OPERATIONS
use qadbt;
#concatenation-- to concatenate two strings,rows
select concat(name,branch) as name_branches from company;

#substring--to start string from a particular letter
select substr(name,3) from company where name = 'oracle';  #start from 3rd letter
select substr(name,2,4) from company where name = 'oracle'; #start from 2nd letter and end at the fourth letter

#to replace characters
select replace(name,'oracle','microsoft') from company;  # will replace oracle with microsoft

#to print length
select length(name) from company;

#to trim spaces
select trim('  mysql  ');

#to print top 3 records
select name from company limit 3;  # in mysql we use limit and in microsoft sql server we use top