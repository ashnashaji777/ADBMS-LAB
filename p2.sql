create database db2;
use db2;
create table  employee(emp_no int NOT NULL primary key,emp_name varchar(30) NOT NULL,DOB date NOT NULL,address varchar(50) not null,mob_no int not null ,dep_no int not null,salary int not null,designation varchar(20) not null);
 desc employee;
 create table department(dep_no int not null,dep_name varchar(30) not null,location varchar(20) not null);
 desc department;
 
 INSERT employee values(101,'ashna','2001-12-6','fdhahfhsk',1236547896,1,70000,'manager'),(102,'joshna','2000-10-23','ghgdgfjs',1245789463,2,800000,'ceo'),(103,'deva','2000-9-20','ghsjsbvjhguhjsu',1478523694,1,100000,'hr'),(104,'fathima','2001-2-14','fgddufyuhjuu',1478524569,3,50000,'manager'),(105,'devika','1999-3-20','fdywgfjhfioik',1546278942,1,600000,'md');
 
 select * from employee;
 INSERT department values(1,'finance','main floor'),(2,'management','first floor'),(3,'design','second floor'),(4,'architecture','third floor'),(5,'advertisement','fourth floor');
 select *from department;
 select emp_no,emp_name from employee where dep_no=2;
 select emp_no,emp_name,dep_no,salary from employee
 ORDER BY salary DESC;
 select emp_no,emp_name from employee
 where salary between 50000 and 100000;
 select 
 distinct designation
 from employee;
select dep_no,sum(salary)
from employee group by dep_no;
update employee
set salary=25000 where designation="manager";
select * from employee;
UPDATE employee
SET mob_no = 1364785129
WHERE emp_name = 'joshna';
delete from employee where salary=100000;
select dep_no,sum(salary) from employee group by dep_no having sum(salary)>2500;
