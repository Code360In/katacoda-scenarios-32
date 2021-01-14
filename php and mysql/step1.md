
Pull and run a apache container with php.

`docker pull php:apache`{{execute}}

`docker run --name php -d -p 80:80 php:apache`{{execute}}



`curl localhost`{{execute}}

` docker exec -it php /bin/bash`{{execute}}

Define index.html inside the container.
```php

<h1> Hello </h1> 
<?php 
	printf(phpversion());
?>

```

`docker exec -it php /bin/sh -c "echo '<h1> Hello </h1> <?php printf(phpversion());?>'>/var/www/html/index.html"`{{execute}}

`curl localhost`{{execute}}

Visit localhost at port 80 with browser.
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/



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

