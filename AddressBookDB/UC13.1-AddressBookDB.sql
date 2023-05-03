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
------  UC4  ------
update  addressbook set email = 'RoseMir34@gmail.com', phonenumber = '77756898644', address = 'Mirzapur', city = 'Bhopal', state = 'MP', zip = '886004' where first_name = 'Rose' and last_name = 'Mir';
select * from addressbook;

 ------  UC5  ------
delete from addressbook where first_name = 'Priya';
select * from addressbook;  

------  UC6  ------
select * from addressbook where city = 'Siwan';
select * from addressbook where state = 'Maharashtra';

 ------  UC7  ------
Select state, COUNT(*) as total_contacts from addressbook group by state;  

 ------  UC8  ------
 update  addressbook set city = 'Pune' where id = 3;
 
 ------  UC9 ------
 alter table addressbook add column name varchar(50),add column type varchar(50);
 update addressbook SET name = 'Altaf', type = 'Profession' where id = 1;
 update addressbook SET name = 'Rauf', type = 'My Family' where id = 2;
 update addressbook SET name = 'Kiran', type = 'My Friend' where id = 3;
 update addressbook SET name = 'Muskan', type = 'My Family' where id = 4;
 update addressbook SET name = 'Rose', type = 'Profession' where id = 6;
 update addressbook SET name = 'SholkBabu', type = 'Profession' where id = 7;
 
 ------  UC10  ------
 select type, count(*) as count from addressbook group by type;
 
 ------  UC11  ------
 insert into addressbook(first_name, last_name, email, phonenumber, address, city, state, zip,name,type) values ('Virat', 'Kohli', 'virat.kohli@gmail.com', '7217255586', 'Pindiwadi', 'Surat', 'Gujarat', '456789','Virat','My Friend');
 insert into addressbook(first_name, last_name, email, phonenumber, address, city, state, zip,name,type) values ('Aman', 'Sayyad', 'Aman121@gmail.com', '9877455586', 'Nigdi', 'Pune', 'Maharashtra', '456700','Aman','My Family');
 select * from addressbook; 