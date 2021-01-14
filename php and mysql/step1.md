First, create a docker network.

`docker network create my-network`{{execute}}


<h3> Setup MySQL Server</h3>

Start mysql server container and connect to my-network.

`docker run --net my-network --name=mysql -e MYSQL_ROOT_PASSWORD="12345" -p 33306:3306 -d mysql:8`{{execute}}


Setup the sakila sample database DB.

```
wget https://downloads.mysql.com/docs/sakila-db.zip
unzip sakila-db.zip
```{{execute}}

```
docker cp  sakila-db/ mysql:/
docker exec  mysql mysql -u root -p12345 -e 'SOURCE /sakila-db/sakila-schema.sql'
docker exec  mysql mysql -u root -p12345 -e 'SOURCE /sakila-db/sakila-data.sql'
```{{execute}}

Verify if the sakila database is created.

`docker exec  mysql mysql -u root -p12345 -e "show databases";`{{execute}}
 
 
 <h3> Setup Apache server with PHP</h3>
 Startup a new instance of apache server named "apache" and connect the container to my-network.

`docker rm -f apache`{{execute}}

`docker run --net my-network --name apache -d -p 80:80 php:apache`{{execute}}


Install mysql extension for php in the apache container.

`docker exec -it apache bash`{{execute}}

`docker-php-ext-install mysqli`{{execute}}

Exit the container's shell.

`exit`{{execute}}

Restart the apache server container.

`docker restart apache`{{execute}}