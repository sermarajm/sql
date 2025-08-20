create database anyone;

use anyone;

CREATE TABLE anyone (
    s_no INT,
    name1 CHAR,
    id BIGINT,
    age INT,
    salary BIGINT,
    num VARCHAR(40)
);
select * from anyone;

alter table anyone add column number1 bigint;
alter table anyone modify column age bigint;
alter table anyone change column  num contact_number char(30);
alter table anyone drop column age;