Start a new Docker container for a MySQL 8.0 Server.

`docker run --name=mysql -e MYSQL_ROOT_PASSWORD="12345" -p 33306:3306 -d mysql:8`{{execute}}

* -d option used in the docker run command above makes the container run in the background.
* -e MYSQL_ROOT_PASSWORD="12345" specifies initial root user password to be "12345"


Install mysql connection using pip (if not previously installed).

`pip install mysql-connector-python`{{execute T1}}


Install python
`apt-get install python`{{execute T1}}

