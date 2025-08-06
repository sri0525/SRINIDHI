create schema ohh;
use ohh;
create table employees(slno int, name varchar(50), dept varchar(50), salary int);
select * from employees;
insert into employees values ( 1,'john','HR',50000);
insert into employees values ( 2,'ram','Sales',70000),( 3,'janani','marketing',20000),( 4,'janu','finance',80000);
insert into employees (slno,dept)values ( 5,'HR');
update employees set salary=60000 where slno =1;
update employees set dept='marketing' where dept ='sales';
update employees set salary=salary*1.10 where dept='IT';
update employees set name='rani',dept='sales',salary=100000 where slno=5;
delete from employees where slno =5;
truncate table employees;
create table students(id int, Name varchar(50), Age int, Email varchar(50));
select * from students;
drop table students;
create table students(id int, Name varchar(50), Age int, Email varchar(50),status varchar(20) default 'active');
select * from students;
create table TempData(id int, Name varchar(50), Age int);
drop table TempData;
alter table students drop Age ;
select * from students;
create index name on students (id, Email);
drop index name on students;
alter table students add DOB date;
select * from students;


