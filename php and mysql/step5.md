Define the SQL script "users.sql" to create a user tables and insert a number of users as follows.

```
CREATE DATABASE mydb;
USE mydb;
CREATE TABLE USER(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100),
	password VARCHAR(100),
	email VARCHAR(100),
	PRIMARY KEY (ID)
);

INSERT INTO USER (name, password, email) VALUES ('Admin','1581', 'Admin@abc.com');
INSERT INTO USER (name, password, email) VALUES ('Alice','123','Alice@abc.com');
INSERT INTO USER (name, password, email) VALUES ('Bob','555','Bob@abc.com');
INSERT INTO USER (name, password, email) VALUES ('Carol','3721','Carol@abc.com');
```

Execute the script in the mysql container.
`docker exec  mysql mysql -u root -p12345 <users.sql`{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}