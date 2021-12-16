/*UC1*/
create database address_book_service;
use address_book_service;

/*UC2*/
create table address_book(id int identity(1,1) primary key, firstname varchar(30), lastname varchar(30), address varchar(100), city varchar(50), state varchar(20), zip char(5), pno varchar(50), email varchar(50));





