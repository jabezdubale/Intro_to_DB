create database alx_book_store;

use alx_book_store;

create table Authors (
    author_id int primary key,
    author_name varchar(215)
);

create table Books(
    book_id int primary key,
    title VARCHAR(130),
    author_id int,
    foreign key (author_id) references Authors(author_id),
    price DOUBLE,
    publication_date DATE
);

create table Customers (
	customer_id int primary key,
	customer_name VARCHAR(215),
	email VARCHAR(215),
	address TEXT
);

create table Orders (
	order_id int primary key,
    customer_id int,
    foreign key (customer_id) references Customers(customer_id),
    order_date date
);

create table Order_Details (
	orderdetailid int primary key,
    order_id int,
    book_id int,
    foreign key (order_id) references Orders(order_id),
    foreign key (book_id) references Books(book_id ),
    quantity double
);



