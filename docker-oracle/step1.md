
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


Check the log of the container.

`docker logs oracle-xe`{{execute}}

If the database is started up successfully, the log will contain the following:

<pre>
Database exists
Starting Oracle Net Listener.
Oracle Net Listener started.
Starting Oracle Database instance XE.
Oracle Database instance XE started.

The Oracle base remains unchanged with value /opt/oracle
#########################
DATABASE IS READY TO USE!
#########################
...
</pre>

