First, create a docker network.

`docker network create my-network`{{execute}}


Start mysql server container and connect to my-network.

`docker run --net my-network --name=mysql -e MYSQL_ROOT_PASSWORD="12345" -p 33306:3306 -d mysql:8`{{execute}}


Setup the sakila sample database DB.

```
wget https://downloads.mysql.com/docs/sakila-db.zip

unzip sakila-db.zip`{{execute}}

docker cp  sakila-db/ mysql:/`{{execute}}

docker exec -it mysql mysql -u root -p12345`{{execute}}

SOURCE /sakila-db/sakila-schema.sql`{{execute}}

SOURCE /sakila-db/sakila-data.sql`{{execute}}

exit
```{{execute}}

