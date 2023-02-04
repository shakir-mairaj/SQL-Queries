#CONSTRAINTS
use qadbt;

#NOT NULL CONSTRAINT-- not null constraint specifies a particular column cannot have a null value
create table flight(flightname varchar(10), flightid int not null);
insert into flight values('vistara', 110);
insert into flight values('airindia');--- wont be allowed as flight id cant be null
select * from flight;
describe flight;

#DEFAULT CONSTRAINT
create table defconst(name varchar(10), age int default 25); #default age will be 25 when we dont give any value
insert into defconst(name) values('jack');
select * from defconst;

#UNIQUE CONSTRAINT--unique values
create table uniqconst(name varchar(10), age int unique);
insert into uniqconst values('jill', 11); # another id with 11 id wont be accepted
describe uniqconst;

