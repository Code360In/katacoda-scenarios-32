Pull the docker image from Docker Hub.

`docker pull cswclui/oracle18:slim`{{execute}}

Check that the image is available after the image is downloaded.

`docker images`{{execute}}

Run the Oracle docker image

`docker run --name oracle-xe -d -p 51521:1521  -v /docker_share:/share cswclui/oracle18:slim`{{execute}}

*	--name specifies the container name
*	-d runs the container in background mode
*	-p maps a host port to a container port
*	-v: bind the local drive (e.g. /docker_share) with the container’s folder /share

After the container has started, run the following commands in the command prompt.

`docker ps`{{execute}}

Check the log of the container.

`docker logs oracle-xe`{{execute}}

If the database is started up successfully, the log will show:

<pre>
...
SQL> ORACLE instance started.

Total System Global Area 1610612016 bytes
Fixed Size                  8658224 bytes
Variable Size             452984832 bytes
Database Buffers         1140850688 bytes
Redo Buffers                8118272 bytes
</pre>

Launch a shell in the Oracle18C XE container. 

`docker exec -it oracle-xe bash`{{execute}}

Check that you are logged in as `Oracle` user.

Connect to the database with sqlplus as sys user. 

`sqlplus / as  sysdba`{{execute}}

Check the current logged in user.
`show user;`

Exit the sqlplus environment.

`exit`{{execute}}




