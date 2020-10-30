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
     ZIP     NUMERIC(6) NOT NULL,
     Phone_No     NUMERIC(10) NOT NULL,
     Email     VARCHAR(150) NOT NULL,
     primary key (First_Name,Last_Name)
     );
#UC3
 INSERT INTO Address_Book (First_Name, Last_Name, Address, CITY, STATE, ZIP, Phone_No, Email)VALUES
    ( 'Leena','Sarode', 'Kalamboli', 'NaviMumbai', 'Maharashtra', 410218, 9021919229,'leena@bl.com'),
    ( 'Samuel','Flonia', 'Radex', 'Nashik', 'Maharashtra', 654321, 9453872901,'Satex@in.com');
INSERT INTO Address_Book (First_Name, Last_Name, Address, CITY, STATE, ZIP, Phone_No, Email)VALUES
    ( 'Alex','Peter', 'Keniya', 'Mumbai', 'Maharashtra', 404638, 9019196429,'Alex@in.com');
 SELECT * FROM Address_Book;
