
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

