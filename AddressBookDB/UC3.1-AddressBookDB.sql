show databases;

------  UC1  ------
 create database address_book_service;
 use address_book_service;
 
------  UC2  ------
create table  addressbook(id int primary key auto_increment,first_name varchar(50) not null,last_name varchar(50) not null,address varchar(200),city varchar(50),state varchar(50),zip int,email varchar(100) not null,phonenumber long);
describe addressbook;   

------  UC3  ------
insert into addressbook(first_name, last_name,  address, city, state, zip,email, phonenumber) values ('Altaf', 'Khan',  'Panvel', 'Mumbai', 'Maharashtra', '410222','ak@123','9665566123'),('Rauf','Majgaokar','Mumbra','Thane','Maharashtra','420569','rauf@gmail.com','9866532214'),('Kiran','urshil','Bajajnagar','Aurangabad','Maharashtra','423568','kirrran@yahoo.com','8956274130'),('Muskan','Siddiqui','Pimpri','Pune','Maharashtra','452698','muski@gmail990','8554956765'),('Priya','Sharma','Udaypur','Kolkata','WestBengal','458997','priya@sharma@123','7658922444'),('Rose','Mir','Dilawarpur','Munger','Kashmir','456988','roserose@34166gmail.com','8963324178'),('ShlokBabu','Kumar','kalyugnagar','Siwan','Bihar','562887','kumarji@789','8553247169');
select * from addressbook;

 