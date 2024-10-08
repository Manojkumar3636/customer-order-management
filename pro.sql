use`project`;
create table customer(Customer_Id int primary key,Customer_Name  varchar(50),E_mail varchar(50),Phone_Number int(10),Address varchar(60));
create table orders(Order_Id int primary key,Customer_Id int,Order_date date, Total_Cost int,
foreign key(Customer_Id) references customer(Customer_Id));

create table products(Product_ID int primary key,Product_Name varchar(100), Price int,Category varchar(100));

create table Order_item(Order_Item_Id int primary key,Order_Id int,Product_Id int,Quantity int,
foreign key(Order_Id)references orders(Order_Id),
foreign key(Product_Id) references products(Product_ID));

create table employe(employee_name varchar(40),employee_id int primary key,department varchar(100),salary int,hire_date date);
insert into customer values (001,'manoj','manoj@gmail.com',1234567890,'main st');
insert into customer values (002,'guru','guru@gmail.com',1234598567,'oggy st');
insert into customer values (003,'siva','siva@gmail.com',1234549876,'ben st');
insert into customer values (004,'yagi','yagi@gmail.com',1234561234,'bheem st');
insert into customer values (006,'gunal','gunal@gmail.com',1212554598,'hattori st');
insert into customer values (007,'arun','arun@gmail.com',1313456709,'first st');
insert into customer values (008,'kumar','kumar@gmail.com',1232188598,'manson st');
insert into customer values (009,'chokka','chokka@gmail.com',1243426789,'park st');
insert into customer values (010,'jega','jega@gmail.com',1453254598,'huge st');

insert into orders values (121,'001','2024-09-01',500);
insert into orders values (122,'006','2024-09-07',700);
insert into orders values (123,'001','2023-08-10',900);
insert into orders values (124,'002','2024-09-07',200);
insert into orders values (125,'003','2023-08-11',556);
insert into orders values (126,'007','2023-09-15',556);


insert into products values(11,'A',20,'cloth');
insert into products values(12,'B',50,'electronic');
insert into products values(13,'C',40,'cloth');
insert into products values(14,'D',70,'medical');
insert into products values(15,'E',30,'food');
select * from Products;
insert into Order_item values(100,121,1,5);
insert into Order_item values(101,122,2,7);
insert into Order_item values(102,121,3,8);
insert into Order_item values(103,124,5,5);

insert into employe values('manoj',500,'sales',60000,'2024-11-10');
insert into employe values('jhon',501,'marketing',65000,'2024-12-12');
insert into employe values('james',502,'finance',70000,'2024-09-22');
insert into employe values('nikil',503,'finance',80000,'2024-11-25');
insert into employe values('pragash',504,'sales',75000,'2024-09-25');
insert into employe values('chandru',505,'marketing',75000,'2024-07-25');
insert into employe values('naveen',506,'sales',55000,'2024-01-25');

select*from employe;

select * from customer;
select * from orders;
select * from products;

Select *from customer
where Customer_name='arun';
select  e_mail ,Phone_number
from customer;
select * from customer
where address='first st';
select Customer_id,Customer_Name
from customer
where E_mail='siva@gmail.com';

update customer
set E_mail='arunprasath@gmail.com'
where customer_id='007';
select* from customer;

delete From customer
where customer_id='005';

Delete from customer
where customer_id='009';
select * from customer;
Select Count(*)
from customer;
select customer_name
from customer
where Customer_Name='yagi';

select*from customer
order by customer_name ASC;

select E_mail ,count(*) from customer
Group by E_mail
having count(*)>1;

update customer
set address='first st'
where customer_id=006;

select address ,count(*) from customer
Group by address
having count(*)>1;

select * from orders;

select * from orders
where customer_id=002;

select sum(total_cost)as  Toatal_sales
from orders;
select * from orders
where Order_date='2023-08-11';
select * from orders
where Order_date>'2023-08-11';

select*from orders
order by total_cost desc;
select customer_id,sum(total_cost)As Total_order_value
from orders
group by customer_id;

select avg(total_cost) As Average
from orders;

select customer.customer_id,orders.order_id,orders.Order_date,orders.total_cost
from customer
inner join orders
on customer.customer_id=orders.customer_id;

select orders.order_id,order_item.product_id,order_item.quantity
from orders
left join order_item
on orders.order_id=order_item.order_id;

SELECT customer.Customer_Name
FROM Customer 
LEFT JOIN Orders 
ON customer.Customer_Id = orders.Customer_Id
WHERE orders.Order_Id IS NULL;

select customer.customer_id,orders.order_id,orders.Order_date,orders.total_cost
from customer
right join orders
on customer.customer_id=orders.customer_id;

select customer.customer_id,orders.order_id,orders.Order_date,orders.total_cost
from customer
cross join orders;

select * from products;

select sum(price)
from products;

select avg(price)
from products;
 select product_name,price
 from products;
 
 select*from Products
 where price>30;
 select*from products
 order by price desc;
 select count(*)
 from products;
 
select category, count(*)
 from products
 group by category;

select orders.order_id,orders.order_date,orders.total_cost
from orders
join order_item
on orders.order_id=order_item.order_id
join products on
order_item.product_id = products.product_id
where price>20;

select*from employe;

select*from employe
where employee_id='502';
select employee_name,department
from employe;
select * from employe
where department='sales';

update  employe
set department='marketing'
where employee_id='504';

select *from employe
order by salary desc;

select*from employe
where hire_date='2024-01-25';

select*from employe
where hire_date>'2024-01-25';

select avg(salary)
from employe;
select department, count(*)
from employe
group by department;

update employe
set employee_id='001'
where employee_id='500';

SELECT customer.Customer_Name
FROM Customer 
JOIN Orders 
ON customer.Customer_Id = orders.Customer_Id
JOIN employe 
ON orders.Customer_Id = employe.Employee_Id;

select employee_name,salary
from employe
order by salary asc
limit 3;

select employee_name,salary
from employe
order by salary desc
limit 2;

update employe
set salary=80000
where employee_name='nikil';

select * from employe
where employee_name Like 'm%';


select * from employe
where employee_name Like '%l';


select * from customer
where customer_name Like 'm%j%';

select * from customer
where customer_name Like '_a%';































