CREATE DATABASE group_by;
USE group_by;

CREATE TABLE employee(
e_id INT PRIMARY KEY,
e_name VARCHAR(50) NOT NULL,
job_desc VARCHAR(50),
salary int);

INSERT INTO employee
VALUES
(1,'Joseph','Developer',25000),
(2,'Revathy','HR',30000),
(3,'Nisha','Developer',20000),
(4,'Pramoth','HR',35000),
(5,'Malik','Tester',10000),
(6,'Suresh','Tester',15000),
(7,'Shanthi','Admin',8000),
(8,'Sundar','Admin',10000),
(9,'Pramela','Manager',80000),
(10,'Kesavan','CEO',100000),
(11,'Kedharnath','Manager',75000),
(12,'Ameer','Developer',30000),
(13,'Ashok','Tester',30000),
(14,'Sam','Analyst',25000),
(15,'Joshibha','Analyst',35000),
(16,'Hari','Analyst',45000);

select * from employee;

select job_desc,sum(salary) from employee group by job_desc;

select job_desc,sum(salary) from employee group by job_desc order by sum(salary) desc;
