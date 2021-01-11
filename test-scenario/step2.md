<h1>Running an Ubuntu Image</h1>
The following pull command fetches the busybox image from the Docker registry and saves it to our system
Try: `docker pull ubuntu:18.04`{{execute}}

<br/><br/>
Run the ubuntu docker image:	<br/>
`docker run ubuntu:18.04`{{execute}}

<br/><br/>
The container will stop immediately
Show running containers:
`docker ps`{{execute}}

<br/>
Show all containers (including stopped one):<br/>
`docker ps -a`{{execute}}

<br/><br/>
Connect container to terminal with -it option:
`docker run -it ubuntu:18.04`{{execute}}

<br/><br/>
You may append a command to execute when the container starts:
`docker run ubuntu:18.04 echo "hello"`{{execute}}


