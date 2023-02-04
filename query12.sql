#CASE
use qadbt;
create table marks(name varchar(10), score int);
select * from marks;
insert into marks values('bob', 20);
insert into marks values('nob', 30);
insert into marks values('tob', 45);
insert into marks values('mob', 50);

select score, case name 
when 'bob' then score*10
when 'nob' then score+20
else score
end
'Newscore' from marks;


