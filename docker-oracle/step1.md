Pull the docker image from Docker Hub.

`docker pull cswclui/oracle18cxe`{{execute}}


Check that the image is available after the image is downloaded.

`docker images`{{execute}}


Run the Oracle docker image

`docker run --name oracle-xe -d -p 51521:1521  -v /docker_share:/share cswclui/oracle18cxe`{{execute}}

*	--name specifies the container name
*	-d runs the container in background mode
*	-p maps a host port to a container port
*	-v: bind the local drive (e.g. /docker_share) with the container’s folder /share

After the container has started, run the following commands in the command prompt.

`docker ps`{{execute}}


Launch a shell in the Oracle18C XE container. 

`docker exec -it oracle-xe /bin/sh`{{execute}}


Change the user to "oracle".
 
`su oracle`{{execute}}


Connect to the database with sqlplus as sys user. 

`sqlplus / as  sysdba`{{execute}}


Change the password of the **system** user.

`alter user system identified by "12345";`{{execute}}


The user accounts in oracle are stored in all_users view.
`describe all_users`{{execute}}


Use the following SQL statement to show all usernames.
`select USERNAME from all_users;`{{execute}}

Exit the sqlplus environment.
`exit`{{execute}}