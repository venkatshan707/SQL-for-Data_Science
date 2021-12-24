create database assignments;
use assignments;

#creating customer table
create table customer (
email varchar (30) primary key,
name varchar (30) not null,
product_id int (10) references product (product_id),
z_code int (10) references address(zip_code)
);
alter table customer add contact varchar (15);

#creating product table
create table product (
product_id int (10) primary key,
product_name varchar (30) not null, 
price float(10, 2)  not null
);

#Creating customer_address table
create table customer_address(
zip_code int (10),
street_address varchar (45), 
city varchar (15),
state varchar (20),
primary key (zip_code));

# Adding Country column in the customer_address table
alter table customer_address add country varchar (30);

#Inserting values to the tables

-- Inserting values in the Customer table
insert into customer (email, name, contact) values ("venkat@gmail.com", "Venkat", 7373456800);
insert into customer (email, name, contact) values ("srikanth@gmail.com", "srikanth", 7373456801);
insert into customer (email, name, contact) values ("guna@gmail.com", "guna", 7373456855);

-- Inserting values in the product table 
insert into product values (1234,"Table", 300.12);
insert into product values (3456,"Bench", 350.12);
insert into product values (5678,"sofa",400.12);

-- Inserting values in the customer_adress 
insert into customer_address values (631304, "kamala vinayagar kovil steet", "singasamuthiram", "Tamil nadu");
insert into customer_address values (63135, "kamala vinayagar kovil steet", "singasamuthiram", "Tamil nadu");
insert into customer_address values (631306, "kamala vinayagar kovil steet", "singasamuthiram", "Tamil nadu");

#creating duplicate table from customer table. 
create table customer_bkup select * from customer; 

# droppging column state from customer_address;
alter table customer_address drop column state; 

#Rename the table 'Customer_Address' to 'Address'.
alter table customer_address rename to address;





