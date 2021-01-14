
First, create a docker network.

`docker network create my-network`{{execute}}



Start mysql server container and connect to my-network.

`docker run --net my-network --name=mysql -e MYSQL_ROOT_PASSWORD="12345" -p 33306:3306 -d mysql:8`{{execute}}



Startup a new instance of apache server named "apache" and connect the container to my-network.

`docker rm -f apache`{{execute}}

`docker run --net my-network --name apache -d -p 80:80 php:apache`{{execute}}


Install mysql extension for php in the apache container.

`docker exec -it apache bash`{{execute}}

`docker-php-ext-install mysqli`{{execute}}

Exit the container's shell.
`exit`{{execute}}

Restart the apache server container.

`docker restart apaches`{{execute}}




Define the file "test2.php".
```php
<?php
	$servername = "mysql:3306";
	$username = "root";
	$password = "12345";

	// Create connection
	$conn = new mysqli($servername, $username, $password);
	
	if ($conn->connect_error){
		die("Connection failed:".$conn->connect_error);
	}
	echo "Connected to MySQL Successfullly"
?>
```

Copy test2.php to the apache container.

`docker cp test2.php apache:/var/www/html`{{execute}}

Test the PHP script.

`curl localhost/test2.php`{{execute}}

Visit localhost at port 80 with browser.
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/test2.php




`docker exec -it mysql mysql -u root -p12345`{{execute}}
``{{execute}}

``{{execute}}

``{{execute}}


Start a new Docker container for a MySQL Server.



``{{execute}}

Connecting to mysql from 

 


docker stop php


nano test.php


***
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql


$ docker cp test2.php php:/var/www/html
$ curl localhost/test2.php


``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}