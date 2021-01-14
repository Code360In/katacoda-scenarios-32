
Pull and run a apache container with php.

`docker pull php:apache`{{execute}}

`docker run --name php -d -p 80:80 php:apache`{{execute}}



`curl localhost`{{execute}}

` docker exec -it php /bin/bash`{{execute}}

Define test.php inside the container.
`

<pre class="file" data-filename="test.php" data-target="replace">
<h1> Hello </h1> 
<?php 
	printf(phpversion());
?>
`{{copy}}


Copy test.php into the container.
`docker cp test.php php:var/www/html`{{execute}}



`curl localhost`{{execute}}

Visit localhost at port 80 with browser.
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/


`docker exec -it php /bin/sh -c "echo '<h1> Hello </h1> <?php printf(phpversion());?>'>/var/www/html/index.html"`{{execute}}

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

