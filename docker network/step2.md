
Start mysql server container and connect to my-network.

`docker run --net my-network --name=mysql -e MYSQL_ROOT_PASSWORD="12345" -p 33306:3306 -d mysql:8`{{execute}}


Check the container log and wait until the database is initialized.

`docker logs mysql`{{execute}}

The container log should show the following message when the initialization is completed.
 
`MySQL init process done. Ready for start up.`


