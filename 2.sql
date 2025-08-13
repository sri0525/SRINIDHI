use ohh;
create table products(id int primary key, name varchar(100), category varchar(50), price decimal(10, 2));
insert into products  values
(101, 'Laptop','Electronic', 500.00),
(102,'Smartphone','Electronics', 300.00),
(103, 'Headphones','Electronics', 30.00),
(104,'Keyboard','Electronics', 20.00),
(105, 'Mouse','Electronics', 15.00),
(106,'wire','Electrical', 10.00);
select * from products;
select name, price from products;
select * from products where category = 'Electronics';
select id, name from products where price > 100;
select avg(price)as avgprice from products; 
select name,price from products where price= (select min(price)from products);
select name,price from products order by price desc;
select name,price from products where price between 20 and 600;
select name,category from products order by category asc;

create table sales (
saleid int primary key,
productid INT,
quantitysold INT,
saledate DATE, price DECIMAL(10, 2), foreign key (productid) REFERENCES products(id));
select * from sales;
INSERT INTO sales VALUES
(1, 101, 5, '2024-01-01', 2500.00),
(2, 102, 3, '2024-01-02', 900.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 80.00),
(5, 105, 6, '2024-01-03', 90.00);
select saleid,saledate from sales;
select price from sales where price>100;
select saleid, price from sales where saledate='2024-01-03';
select sum(price)as total_revenue from sales;
select sum(quantitysold) as total from sales;
select saleid ,productid, price from sales where quantitysold >4;
select avg(price) as average from sales;