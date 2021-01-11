<h1>Running an Ubuntu Image</h1>
The following pull command fetches the busybox image from the Docker registry and saves it to our system. Try:

 `docker pull ubuntu:18.04`{{execute}}


Run the ubuntu docker image:	<br/>
`docker run ubuntu:18.04`{{execute}}

The container will stop immediately.

Show the running containers:
`docker ps`{{execute}}


Show all containers (including stopped one):<br/>
`docker ps -a`{{execute}}


Connect container to terminal with -it option:
`docker run -it ubuntu:18.04`{{execute}}

In the docker container, type some commands, e.g.<br/>

`ls`{{execute}}


Exit the docker container.

`exit`{{execute}}


You may append a command to execute when the container starts:
`docker run ubuntu:18.04 echo "hello"`{{execute}}


