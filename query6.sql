#JOINS
use qadbt;

create table citizens(name varchar(15),age int, experience int);
insert into citizens values('adam', 25, 1);
insert into citizens values('brown', 28, 3);
insert into citizens values('david', 30, 5);
insert into citizens values('andy', 32, 10);
insert into citizens values('gary', 35, 12);

select * from citizens;

create table citizenloc(name varchar(15), location varchar(15));
insert into citizenloc values('adam', 'florida');
insert into citizenloc values('brown', 'chicago');
insert into citizenloc values('david', 'newyork');
insert into citizenloc values('andy', 'canada');
insert into citizenloc values('gary', 'ohio');

select * from citizenloc;

#join
select c.name,c.age,cl.location from citizens as c join citizenloc as cl on c.name=cl.name;
select c.name,c.age,cl.location from citizens as c join citizenloc as cl on c.name=cl.name where location='canada';

