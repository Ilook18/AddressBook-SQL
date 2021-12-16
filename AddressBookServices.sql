/*UC1*/
create database address_book_service;
use address_book_service;

/*UC2*/
create table address_book(id int identity(1,1) primary key, firstname varchar(30), lastname varchar(30), address varchar(100), city varchar(50), state varchar(20), zip char(5), pno varchar(50), email varchar(50));

/*UC3*/
insert into address_book values
('Anirudh','Anand','Mohaddipur','Gorakhpur','UP','27300','7905142214','anirudhanand984@gmail.com'),
('Shashank','Singh','Kunraghat','Gorakhpur','UP','27301','7905142215','sash@gmail.com'),
('Punit','Yadav','Semra','Lucknow','UP','26001','7905142216','punit@gmail.com'),
('Pawan','Kumar','Andheri','Mumbai','Maharashtra','26000','7905142217','pawan@gmail.com'),
('Rahul','Khanna','Sector6','Chandigarh','Punjab','25002','7905142218','rahul@gmail.com'),
('Rohan','Malhotra','Sector7','Amritsar','Punjab','25001','7905142219','rohan@gmail.com'),
('Raj','Sinha','Sector8','Ludhiana','Punjab','25003','7905142211','raj@gmail.com'),
('Akshay','Rana','Sector9','Bhopal','MP','24000','7905142212','akshay@gmail.com');
select * from address_book;

/*UC4*/
update address_book set pno='7905142212' where firstname='Anirudh';
update address_book set address='Golghar' where firstname='Shashank';
update address_book set email='punit123@gmail.com' where lastname='Yadav';

/*UC5*/
delete from address_book where firstname='Rahul';

/*UC6*/
select * from address_book where city='Mumbai' or state='Maharashtra';

/*UC7*/
select COUNT(*) from address_book;
select COUNT(*) from address_book where state='UP' group by state;

/*UC8*/
select firstname,city from address_book order by firstname asc;
select * from address_book order by firstname asc;

/*UC9*/
alter table address_book add typename varchar(30);
update address_book set typename='Friends' where firstname='Anirudh' or firstname='Punit' or firstname='Shashank';
update address_book set typename='Family' where firstname='Pawan' or firstname='Rohan';
update address_book set typename='Profession' where  firstname='Raj';

