<br/>
The following pull command fetches the busybox image from the Docker registry and saves it to our system
Try
`docker pull ubuntu:18.04`{{execute}}

<br/>
Run the ubuntu docker image	
`docker run ubuntu:18.04`{{execute}}
<br/>
The container will stop immediately
Show running containers
docker ps

<br/>
Show all containers (including stopped one)
docker ps -a
<br/>
Connect container to terminal with -it option
docker run -it ubuntu:18.04

<br/>
You may append a command to execute when the container starts
docker run ubuntu:18.04 echo "hello"

