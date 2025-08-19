create database employeesdetail1;
 use employeesdetail1;
 
 CREATE TABLE employeesdetail1 (
    firstname CHAR(30),
    lastname VARCHAR(30),
    emailid VARCHAR(30),
    phone INT,
    department VARCHAR(40),
    salary decimal(30,2)
);
 
insert into employeesdetail1 (firstname, lastname, emailid,phone,department,salary) values ('serma','m','serma2003@gmai.com',675898977,'hr',44567);
insert into employeesdetail1 (firstname, lastname, emailid,phone,department,salary) values ('raja','m','raja2003@gmai.com',678898977,'mec',45053);
insert into employeesdetail1 (firstname, lastname, emailid,phone,department,salary) values ('mukesh','m','mukesh2003@gmai.com',915898977,'cs',34533);
insert into employeesdetail1 (firstname, lastname, emailid,phone,department,salary) values ('gokul','m','gokul2003@gmai.com',565898977,'eee',45634);
select*from employeesdetail1;
select * from employeesdetail1 where department = 'eee';
create view em as select * from employeesdetail1 order by salary desc;
select * from em;
select sum(salary) as all_salary from employeesdetail1;
select department,count(*) as total_count from employeesdetail1 where 
salary >= 40000 group by  department having total_count >=2;
select*from employeesdetail1;