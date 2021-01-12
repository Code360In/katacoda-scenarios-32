<h1>Launching a MySQL8 Docker Container</h1>

Download the MySQL 8.0 Database image.

`docker pull mysql/mysql-server:8.0`{{execute}}


Check the downloaded image.

`docker images`{{execute}}


Start a new Docker container for a MySQL Server.

`docker run --name=mysql -e MYSQL_ROOT_PASSWORD="12345" -p 33306:3306 -d mysql/mysql-server:8.0`{{execute}}
* -d option used in the docker run command above makes the container run in the background.
* -e MYSQL_ROOT_PASSWORD="12345" specifies initial root user password to be "12345"


View the created container.

`docker ps`{{execute}}


To connect to the MySQL Server, use the docker exec -it command to start a mysql client inside the Docker container you have started.  Use the password 12345 to login.

`docker exec -it mysql mysql -u root -p`{{execute}}




