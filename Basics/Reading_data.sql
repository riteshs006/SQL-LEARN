create table Products (
	product_id int,
	product_name varchar(50),
	price float,
	release_date date
);

select * from Products;

Insert into Products (product_id,product_name,price,release_date) 
values (1,'iphone 15', 999.99, to_date('22-08,2023','dd-mm-yyyy')),
(2,'macbook 15', 9999.99, to_date('22-10-2023','dd-mm-yyyy')),
(3,'airpods', 99, to_date('20-01-2022','dd-mm-yyyy')),
(4,'charger', 9.9, to_date('22-08-2021','dd-mm-yyyy'));

--- Find products with price more than 1000
select * from Products where price > 1000;


--- Find the products with specific column 
select product_name from Products where price > 1000;


--- Retrive products whose release date is 2021 
select product_name from Products where to_char(release_date , 'yyyy')= '2021';
--- using in-built function to convert the date to string
--- We can also use EXTRACT which is inbuilt 

select product_name from Products 
where extract (year from release_date) = '2021'

--- Alias: It is used to give a name to a table 
select product_name as roduct from Products;

--- Some more function 
select count(*) from products 
where price > 1000;

select Sum(price) from products

select avg(price) from products
