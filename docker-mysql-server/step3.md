docker run --name=mysql -e MYSQL_ROOT_PASSWORD="12345" -p 33306:3306 -d mysql:8

In the host machine's shell, download and unzip the sakila sample DB scripts.

`wget https://downloads.mysql.com/docs/sakila-db.zip`{{execute}}

`unzip sakila-db.zip`{{execute}}


Copy the scripts into mysql container
`docker cp  sakila-db/ mysql:/`{{execute}}


Run the scripts to create the sample DB.

`docker exec -it mysql mysql -u root -p`{{execute}}

`SOURCE /sakila-db/sakila-schema.sql`{{execute}}

`SOURCE /sakila-db/sakila-data.sql`{{execute}}

Exploring the tables in the sakila DB.

`use sakila`{{execute}}

`show full tables;`{{execute}}

`select * from actor;`{{execute}}

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

``{{execute}}