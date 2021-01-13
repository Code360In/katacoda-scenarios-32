Try the following commands inside mysql client

`SHOW DATABASES;`{{execute}}

`CREATE DATABASE UNIVERSITY;`{{execute}}

`USE UNIVERSITY;`{{execute}}

`CREATE TABLE Persons (PersonID int, LastName varchar(100), FirstName varchar(100), City varchar(100) );`{{execute}}

`SHOW DATABASES;`{{execute}}

`INSERT INTO Persons (PersonID, LastName, FirstName, City) VALUES (1, 'Chan', ' Alice', 'Hong Kong');`{{execute}}

`SELECT * FROM Persons;`{{execute}}


Type exit to exit mysql shell.

`exit`{{execute}}

