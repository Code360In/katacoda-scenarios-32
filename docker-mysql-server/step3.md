In the host machine's shell, download and unzip the sakila sample DB scripts.

`wget https://downloads.mysql.com/docs/sakila-db.zip`{{execute}}

`unzip sakila-db.zip`{{execute}}


Copy the scripts into mysql container
`docker cp  sakila-db/ mysql:/`{{execute}}


In the mysql client inside the mysql container, unip the scripts to create the sample DB.

`docker exec -it mysql mysql -u root -p12345`{{execute}}

`SOURCE /sakila-db/sakila-schema.sql`{{execute}}

`SOURCE /sakila-db/sakila-data.sql`{{execute}}


Exploring the tables in the sakila DB.

`use sakila`{{execute}}

`show full tables;`{{execute}}

`select * from actor;`{{execute}}


Type exit to exit mysql shell.

`exit`{{execute}}
