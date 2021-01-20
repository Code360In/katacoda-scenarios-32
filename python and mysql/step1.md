Start a new Docker container for a MySQL 8.0 Server.

`docker run --name=mysql -e MYSQL_ROOT_PASSWORD="12345" -p 33306:3306  mysql:8`{{execute}}

* -d option used in the docker run command above makes the container run in the background.
* -e MYSQL_ROOT_PASSWORD="12345" specifies initial root user password to be "12345"


The log should show the message `MySQL init process done. Ready for start up.` when the initialization is completed.

Open a second terminal (T2).

In T2, install mysql connector  using pip.

`pip install mysql-connector-python`{{execute T2}}


Verify that you can connect to MySQL Server (You may need to wait for the MySQL Server to be initialized).

`docker exec -it mysql mysql -u root -p12345 -e "SELECT VERSION()"`{{execute T2}}
