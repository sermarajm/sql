CREATE DATABASE joins;
USE joins;

CREATE TABLE customers(
cust_id INT PRIMARY KEY,
cust_name VARCHAR(50) NOT NULL,
city VARCHAR(50)
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
order_detail VARCHAR(50),
order_amount DECIMAL(6,3),
cust_id INT,
FOREIGN KEY(cust_id) REFERENCES customers(cust_id)
);


INSERT INTO customers
VALUES
(101 , 'Gomathi','T Nagar'),
(102,'Kathir','Velachery'),
(103 , 'Guna','Thiruvanmayur'),
(104,'Anees','Velachery'),
(105 , 'Babu','Adayar'),
(106,'Jawahar','Taramani'),
(107,'Deekshaya','Guindy');




select * from customers;
select* from orders;



select c.cust_id , r.order_amount from customers c left join orders r on c.cust_id=r.cust_id;

select c.cust_id , r.order_amount from customers c right join orders r on c.cust_id=r.cust_id;


select c.city,  r.order_amount from customers c  left join  orders r on c.cust_id=r.cust_id; 
