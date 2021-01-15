In the host machine's shell, download and unzip the sakila sample DB scripts.

`wget https://downloads.mysql.com/docs/sakila-db.zip`{{execute}}

`unzip sakila-db.zip`{{execute}}


Copy the DB scripts into mysql container.

`docker cp  sakila-db/ mysql:/`{{execute}}


In the mysql client inside the mysql container, unzip the scripts to create the sample DB.

`docker exec -it mysql mysql -u root -p12345`{{execute}}

`SOURCE /sakila-db/sakila-schema.sql`{{execute}}

`SOURCE /sakila-db/sakila-data.sql`{{execute}}


Exploring the tables in the sakila DB.

`use sakila`{{execute}}

`show full tables;`{{execute}}

`select * from actor;`{{execute}}


> **Exercise**: Write the SQL statement for the following queries.
> * Which actors have the first name 'Scarlett'?
> * Which actors have the last name 'Johansson'?
> * How many distinct actors last names are there?
> * Which actor's last names are not repeated?
> * What is that average running time of all the films?
> * What is the average running time of films by category?


Type exit to exit mysql shell.

`exit`{{execute}}
