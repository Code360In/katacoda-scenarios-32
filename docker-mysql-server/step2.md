Try the following commands inside mysql client

`SHOW DATABASES;`{{execute}}

`CREATE DATABASE UNIVERSITY;`{{execute}}

`USE UNIVERSITY;`{{execute}}

`CREATE TABLE Persons (PersonID int, LastName varchar(100), FirstName varchar(100), City varchar(100) );`{{execute}}

`SHOW DATABASES;`{{execute}}

`INSERT INTO Persons (PersonID, LastName, FirstName, City) VALUES (1, 'Chan', ' Alice', 'Hong Kong');`{{execute}}

`SELECT * FROM Persons;`{{execute}}


You may also modify the password of the root user in MySQL Server 8.

<pre>ALTER USER 'root'@'localhost' IDENTIFIED BY &lt;your password></pre>


Type exit to exit mysql shell.

`exit`{{execute}}

