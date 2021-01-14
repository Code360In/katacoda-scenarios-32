Start a new Docker container for a MySQL Server.

`docker run --name=mysql -e MYSQL_ROOT_PASSWORD="12345" -p 33306:3306 -d mysql:8`{{execute}}

`docker exec -it mysql mysql -u root -p12345`{{execute}}


`docker pull php:apache`{{execute}}

`docker run --name php -d -p 80:80 php:apache`{{execute}}



`curl localhost`{{execute}}

` docker exec -it php /bin/bash`{{execute}}


`docker exec -it php /bin/sh -c "echo 'hi'>/var/www/html/index.html"`{{execute}}

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