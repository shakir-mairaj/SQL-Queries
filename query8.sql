#INNER JOIN,LEFT JOIN AND RIGHT JOIN
use qadbt;
create table studentdetails(name varchar(15),id int, age int, gender varchar(10));
insert into studentdetails values('sam', 1, 10, 'male');
insert into studentdetails values('ram', 2, 12, 'male');
insert into studentdetails values('sam', 3, 13, 'female');
insert into studentdetails values('sam', 4, 15, 'male');
insert into studentdetails values('sam', 5, 17, 'female');
select * from studentdetails;

create table grades(grade varchar(10),id int);
insert into grades values('A', 1);
insert into grades values('B', 3);
insert into grades values('C', 4);
insert into grades values('E', 8);

select * from grades;

#join or innerjoin--returns all the matching rows
select s.name,s.id,s.age,s.gender,g.grade from studentdetails as s join grades as g on s.id=g.id;

#leftjoin--returns all left row tables and give null if no map found in right table
select s.name,s.id,s.age,s.gender,g.grade from studentdetails as s left join grades as g on s.id=g.id;

#rightjoin--returns all right row tables and give null if no match found in left table
select s.name,s.id,s.age,s.gender,g.grade from studentdetails as s right join grades as g on s.id=g.id;

#examples
select s.name,s.id,s.age,s.gender,g.grade from studentdetails as s join grades as g on s.id=g.id where gender='female';

select s.name,s.id,s.age,s.gender,g.grade from studentdetails as s left join grades as g on s.id=g.id where gender='male';

select s.name,s.id,s.age,s.gender,g.grade from studentdetails as s right join grades as g on s.id=g.id group by s.id having age>12;


