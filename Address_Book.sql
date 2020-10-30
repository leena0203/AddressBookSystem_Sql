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
