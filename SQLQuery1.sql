create database shubhamdb;
use shubhamdb;
/*create table employee(
	id int,
	empName varchar(155),
	salary int,
	city varchar(255));*/
insert into employee(id,empName,salary,city) values('1','Shubh','50000','Chennai');
insert into employee(id,empName,salary,city) values('2','Sanu','60000','Kudra');
insert into employee(id,empName,salary,city) values('3','Sonu','70000','Ssm');
insert into employee(id,empName,salary,city) values('4','Monu','80000','Vns');
insert into employee(id,empName,salary,city) values('5','Mohit','90000','Kashi');
insert into employee(id,empName,salary,city) values('6','Rohit','100000','Sasaram');
insert into employee(id,empName,salary,city) values('7','Sohit','200000','Gaya');
select * from employee;
select * from employee
where salary = 50000;
Select * from employee where empName = 'shubh' and salary ='50000';
Alter table employee add  job_id varchar(255);
delete from employee where salary = 50000;
select * from employee;
update employee set empName = 'Rohan' where id = 7;
Update employee set salary =50000 where empName = 'sonu';
Update employee set job_id = 'eng' where city = 'Kashi';
Update employee set salary =50000 where empName = 'sonu';
Update employee set job_id = 'eng' where city = 'Kashi';
UPDATE employee SET ID=4 WHERE CITY = 'KASHI';
UPDATE employee SET CITY ='varanasi' WHERE ID = 1;
UPDATE employee SET CITY ='varanasi' WHERE ID = 2;
truncate  table employee;
select count(*) from employee;
select count(distinct salary) from employee;
select * from employee order by city ;
select sum(salary) from employee;
select * from employee order by salary desc;
Select salary from employee where job_id is null;
Select empname from employee where empname like 's%';
Select empname from employee where empname like '%u';
Select CURRENT_TIMESTAMP;
Select GETDATE();
Select * from employee;



