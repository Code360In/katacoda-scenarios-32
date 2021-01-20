
Start mysql server container and connect to my-network.

`docker run --net my-network --name=mysql -e MYSQL_ROOT_PASSWORD="12345" -p 33306:3306 -d mysql:8`{{execute}}

The log should show the message `MySQL init process done. Ready for start up.`
when the initialization is completed
 



