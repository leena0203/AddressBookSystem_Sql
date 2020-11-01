#UC1
CREATE DATABASE Address_Book_Service;
show databases;
use address_book_service;
SELECT DATABASE();
CREATE TABLE Address_Book (
    First_Name VARCHAR(150) NOT NULL,
    Last_Name VARCHAR(150) NOT NULL,
    Address VARCHAR(250) NOT NULL,
    CITY VARCHAR(150) NOT NULL,
    STATE VARCHAR(150) NOT NULL,
    ZIP NUMERIC(6) NOT NULL,
    Phone_No NUMERIC(10) NOT NULL,
    Email VARCHAR(150) NOT NULL,
    PRIMARY KEY (First_Name , Last_Name)
);
#UC3
 INSERT INTO Address_Book (First_Name, Last_Name, Address, CITY, STATE, ZIP, Phone_No, Email)VALUES
    ( 'Leena','Sarode', 'Kalamboli', 'NaviMumbai', 'Maharashtra', 410218, 9021919229,'leena@bl.com'),
    ( 'Samuel','Flonia', 'Radex', 'Nashik', 'Maharashtra', 654321, 9453872901,'Satex@in.com');
INSERT INTO Address_Book (First_Name, Last_Name, Address, CITY, STATE, ZIP, Phone_No, Email)VALUES
    ( 'Alex','Peter', 'Keniya', 'Mumbai', 'Maharashtra', 404638, 9019196429,'Alex@in.com');
SELECT 
    *
FROM
    Address_Book;
#UC4
UPDATE Address_Book 
SET 
    Address = 'Andheri'
WHERE
    First_Name = 'Alex';
UPDATE Address_Book 
SET 
    Address = 'Kalamboli'
WHERE
    First_Name = 'Leena';
SELECT 
    *
FROM
    Address_Book;
UPDATE Address_Book 
SET 
    CITY = 'Cochin'
WHERE
    First_Name = 'Samuel';
UPDATE Address_Book 
SET 
    STATE = 'Kerala'
WHERE
    First_Name = 'Samuel';
SELECT 
    *
FROM
    Address_Book;
#UC5
DELETE FROM Address_Book 
WHERE
    First_Name = 'Samuel';
SELECT 
    *
FROM
    Address_Book;
#UC6
SELECT 
    *
FROM
    Address_Book
WHERE
    CITY = 'Cochin' OR STATE = 'Kerala';
    #UC7
SELECT 
    CITY, STATE, COUNT(*)
FROM
    Address_Book
GROUP BY CITY , STATE;
SELECT 
    STATE, COUNT(*)
FROM
    Address_Book
GROUP BY STATE;
#UC8
INSERT INTO Address_Book (First_Name, Last_Name, Address, CITY, STATE, ZIP, Phone_No, Email)VALUES
    ( 'Roy','Bett', 'Medermia_Glanz', 'Cochin', 'Kerala', 454321, 9453878701,'niddhi@in.com');
SELECT 
    *
FROM
    Address_Book
WHERE
    CITY = 'Cochin'
ORDER BY First_Name;
UPDATE Address_Book 
SET 
    Email = 'roy@ni.co'
WHERE
    First_Name = 'Roy';
SELECT 
    *
FROM
    Address_Book;
#UC9
alter table Address_Book rename to Contact;

alter table Contact drop primary key;

alter table Contact add ContactId int not null auto_increment primary key first;

 create table Address_Book
     (
     BookId  int not null auto_increment,
     ContactId int,
     AddressBookName  varchar(200) not null,
     Type  varchar(200) not null,
     primary key    (BookId),
     foreign key (ContactId) references Contact(ContactId)
     );
  insert into Address_Book
    (ContactId, AddressBookName, Type) VALUES
    ( 3, 'Book1', 'Family'),
    ( 1, 'Book3', 'Friend'),
    ( 2, 'Book4', 'Profession'),
    ( 4, 'Book1', 'Profession');
 select * from Address_Book;
 #UC10
 select type,count(ContactId) from Address_Book group by Type;
