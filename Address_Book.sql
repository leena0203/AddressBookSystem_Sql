#UC1
CREATE DATABASE Address_Book_Service;
show databases;
use address_book_service;
#UC2
SELECT DATABASE();
CREATE TABLE Address_Book
     (
     First_Name    VARCHAR(150) NOT NULL,
     Last_Name     VARCHAR(150) NOT NULL,
     Address     VARCHAR(250) NOT NULL,
     CITY     VARCHAR(150) NOT NULL,
     STATE     VARCHAR(150) NOT NULL,
     ZIP     INT(6) NOT NULL,
     Phone_No     INT(10) NOT NULL,
     Email     VARCHAR(150) NOT NULL,
     primary key (First_Name,Last_Name)
     );
DESCRIBE Address_Book;
