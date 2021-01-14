

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


Define "test2.php" in the host machine as follows.
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
    echo "Connected to MySQL Successfullly<br/>";

    $conn->close();
?>

```

Copy test2.php to the apache container.

`docker cp test2.php apache:/var/www/html`{{execute}}

Test the PHP script.

`curl localhost/test2.php`{{execute}}

Visit localhost at port 80 with browser.
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/test2.php


