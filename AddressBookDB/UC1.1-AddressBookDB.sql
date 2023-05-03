show databases;

------  UC1  ------
 create database address_book_service;
 use address_book_service;
 
------  UC2  ------
create table  addressbook(id int primary key auto_increment,first_name varchar(50) not null,last_name varchar(50) not null,address varchar(200),city varchar(50),state varchar(50),zip int,email varchar(100) not null,phonenumber long);
describe addressbook;    